FROM postgres:9.5.3
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB quartz
WORKDIR /docker-entrypoint-initdb.d
ADD tables_postgres.sql /docker-entrypoint-initdb.d/tables_postgres.sql
