#!/usr/bin/sh

ROOT_DIRECTORY=`pwd`

init_task() {
	clear
	echo "Initialize Section"
	read -p "Section Number: " NUM
	read -p "Section Title: " TITLE
	read -p "Section Details: " DETAILS

	CONNECTOR="_"
	DIRNAME="$NUM$CONNECTOR$TITLE"

	mkdir -p "$ROOT_DIRECTORY/$DIRNAME/praktikum"
	mkdir -p "$ROOT_DIRECTORY/$DIRNAME/screenshots"

	echo "# $TITLE
dalam materi ini, kita akan $DETAILS

## Hasil Praktikum
	" >> "$ROOT_DIRECTORY/$DIRNAME/Readme.md"
	echo "# Resume
Ringkasan untuk materi $TITLE.
	" >> "$ROOT_DIRECTORY/$DIRNAME/summary.md"

	cd "$ROOT_DIRECTORY/$DIRNAME/praktikum"

	go mod init main
	go mod tidy

	cd "$ROOT_DIRECTORY"
	menu
}

init_code() {
	clear
	echo "Initialize Code"
	read -p "Section Number: " NUM
	read -p "Task Title: " TITLE
	read -p "Task File Name: " FILENAME

	DIRNAME=`ls | grep $NUM`

	mkdir "$ROOT_DIRECTORY/$DIRNAME/praktikum/$FILENAME"
	echo "package main

import \"fmt\"

func $FILENAME() {}

func main() {
	fmt.Println(\"$TITLE\")
}
	" >> $ROOT_DIRECTORY/$DIRNAME/praktikum/$FILENAME/$FILENAME.go
	menu
}

add_screenshot() {
	clear
	echo "Add Screenshot to Readme"
	read -p "Section Number: " NUM
	read -p "Task Title: " TITLE
	read -p "Task File Name: " FILENAME
	read -p "Screenshot File Name: " SS
	
	DIRNAME=`ls | grep $NUM`
	mv $HOME/Pictures/$SS.png "$ROOT_DIRECTORY/$DIRNAME/screenshots/$FILENAME.png"

	echo "### $TITLE ([Kode](./praktikum/$FILENAME/$FILENAME.go))
![$FILENAME](./screenshots/$FILENAME.png)

" >> $ROOT_DIRECTORY/$DIRNAME/Readme.md

	menu
}

menu() {
	clear
	echo "Menu"
	echo "1. Initialize Task"
	echo "2. Initialize Code"
	echo "3. Add Screenshot to Readme.md"
	echo "0. Exit"
	read -p "Choose Menu : " MENU

	if [ $MENU == "1" ]; then
		init_task
	elif [ $MENU == "2" ]; then
		init_code
	elif [ $MENU == "3" ]; then
		add_screenshot
	else
		return 0
	fi
}

menu
