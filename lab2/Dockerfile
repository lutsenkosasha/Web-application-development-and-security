FROM alpine:latest

# Установка необходимых пакетов
RUN apk update && apk add bash

# Копируем скрипт внутрь контейнера
COPY script.sh /usr/local/bin/script.sh

# Устанавливаем права на исполнение для скрипта
RUN chmod +x /usr/local/bin/script.sh

# Запускаем скрипт в момент запуска контейнера
CMD ["/usr/local/bin/script.sh"]