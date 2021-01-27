FROM mysql:8.0
COPY ./scripts/top5.sql /docker-entrypoint-initdb.d/
EXPOSE 3306