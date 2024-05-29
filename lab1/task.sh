#!/bin/bash

# Определение директории, в которой находится скрипт
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Определение корневой директории
ROOT_DIR="/"

# Поиск и вывод объектов с правами доступа 755
find "$ROOT_DIR" -type f -perm 755 > "$SCRIPT_DIR/objects_with_755_permissions.txt"

# Создаем файл с результатами выполнения скрипта
RESULT_FILE="$SCRIPT_DIR/script_execution_result.txt"
if [ $? -eq 0 ]; then
    echo "Скрипт успешно выполнен." > "$RESULT_FILE"
else
    echo "Ошибка при выполнении скрипта." > "$RESULT_FILE"
fi
