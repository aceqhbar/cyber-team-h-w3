#!/bin/bash

OUTPUT="result.json"

# запускаем nmap и сохраняем в xml
nmap "$@" -oX temp.xml

# конвертируем xml в json через xsltproc (или просто сохраняем как есть)
cat temp.xml > $OUTPUT

# удаляем временный файл
rm temp.xml

echo "Scan saved to $OUTPUT"
