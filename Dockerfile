FROM curlimages/curl:7.73.0

COPY sync_books.sh /sync_books.sh

RUN chmod +x /sync_books.sh

ENTRYPOINT ["/sync_books.sh"]
 