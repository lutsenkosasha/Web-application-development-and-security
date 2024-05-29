#!/bin/bash

# Определение корневой директории
ROOT_DIR="/"

# Директория для сохранения результатов на хосте
OUTPUT_DIR="/mnt"

# Поиск и вывод объектов с правами доступа 755
find "$ROOT_DIR" -type f -perm 755 > "$OUTPUT_DIR/objects_with_755_permissions.txt"

# Создаем файл с результатами выполнения скрипта
RESULT_FILE="$OUTPUT_DIR/script_execution_result.txt"
if [ $? -eq 0 ]; then
echo "Скрипт успешно выполнен." | tee "$RESULT_FILE"
else
echo "Ошибка при выполнении скрипта." | tee "$RESULT_FILE"
fi

# Выводим содержимое файлов в терминал
cat "$OUTPUT_DIR/objects_with_755_permissions.txt"
cat "$RESULT_FILE"
