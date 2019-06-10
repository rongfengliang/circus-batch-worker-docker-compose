FROM dalongrong/circus:2.7-slim-stretch
WORKDIR /app
COPY circus.ini  /app/
COPY webapp/ /app/webapp/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]