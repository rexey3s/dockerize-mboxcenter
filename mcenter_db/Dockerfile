FROM postgres:9.3
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB piserver
WORKDIR /docker-entrypoint-initdb.d
ADD init-quartz-db.sql /docker-entrypoint-initdb.d/init-quartz-db.sql
ADD quartz_tables.sql /docker-entrypoint-initdb.d/table_postgres.sql
