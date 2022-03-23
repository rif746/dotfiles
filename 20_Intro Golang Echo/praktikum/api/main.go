package main

import (
	"net/http"
	"strconv"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

type User struct {
	Id int `json:"id" form:"id"`
	Name string `json:"name" form:"name"`
	Email string `json:"email" form:"email"`
	Password string `json:"password" form:"password"`
}

type Messages struct {
	Message string `json:"message"`
	User User `json:"user"`
}

var users []User

// Get All User
func GetAllUser(c echo.Context) error { 
	return c.JSON(http.StatusOK, users)
}

// Get User By ID
func GetUserByID(c echo.Context) error { 
	id, _ := strconv.Atoi(c.Param("id"))
	msg := Messages{Message: "Data Not Found"}
	for _, u := range users {
		if u.Id == id {
			msg.Message = "Data Available"
			msg.User = u
			break
		}
	}
	return c.JSON(http.StatusOK, msg)
}

// Update User
func UpdateUser(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))

	// Bind Data
	user := User{}
	c.Bind(&user)

	msg := Messages{Message: "Data Not Found"}
	for i, u := range users {
		if u.Id == id {
			user.Id = u.Id
			users[i] = user
			msg.Message = "Data Updated"
			msg.User = user
			break
		}
	}
	return c.JSON(http.StatusOK, msg)
}

// Create User
func CreateUser(c echo.Context) error {
	// Bind Data
	user := User{}
	c.Bind(&user)

	if len(users) == 0 {
		user.Id = 1
	} else {
		newID := users[len(users)-1].Id + 1
		user.Id = newID
	}

	users = append(users, user)
	msg := Messages{Message: "Data Created Successfully", User: user}

	return c.JSON(http.StatusOK, msg)
}

// Delete User
func DeleteUser(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))
	msg := Messages{Message: "Data Not Found"}
	userBackups := []User{}
	for _, u := range users {
		if u.Id != id {
			userBackups = append(userBackups, u)
		} else {
			msg.Message = "Data Deleted"
			msg.User = u
		}
	}
	users = userBackups
	return c.JSON(http.StatusOK, msg)
}

// --------------- MAIN ----------------//
func main() {
  // Echo instance
  e := echo.New()

  // Middleware
  e.Use(middleware.Logger())
  e.Use(middleware.Recover())

  // Routes
  e.GET("/users", GetAllUser)
	e.GET("/users/:id", GetUserByID)
	e.POST("/users", CreateUser)
	e.PUT("/users/:id", UpdateUser)
	e.DELETE("/users/:id", DeleteUser)

  // Start server
  e.Logger.Fatal(e.Start(":8080"))
}
