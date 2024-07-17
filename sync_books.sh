#!/bin/bash

# Warte darauf, dass der bookservice gestartet ist
echo "Warten auf bookservice..."
until nc -z -v -w30 localhost 8080
do
  echo "Warten auf bookservice..."
  sleep 5
done
echo "bookservice gestartet"

# Führen Sie den Swagger-Befehl aus
curl -X GET "http://localhost:8080/books/sync-books" -H "accept: */*"

# Halten Sie den Container am Laufen
tail -f /dev/null
