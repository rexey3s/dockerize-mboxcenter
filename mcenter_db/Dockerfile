FROM postgres:9.5.3
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB piserver
WORKDIR /docker-entrypoint-initdb.d
ADD init-quartz-db.sql /docker-entrypoint-initdb.d/init-quartz-db.sql
ADD tables_postgres.sql /docker-entrypoint-initdb.d/tables_postgres.sql
