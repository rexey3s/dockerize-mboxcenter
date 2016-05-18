FROM postgres:9.4
ENV POSTGRES_USER docker
ENV POSTGRES_PASSWORD docker
ADD init-quartz-db.sh /docker-entrypoint-initdb.d/init-quartz-db.sh
COPY tables_postgres.sql /docker-entrypoint-initdb.d/table_postgres.sql
