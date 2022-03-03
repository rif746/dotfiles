#!/usr/bin/sh

ROOT_DIRECTORY=`pwd`

echo "Initialize Task"
read -p "Task Number: " NUM
read -p "Task Title: " TITLE
read -p "Task Details: " DETAILS

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
