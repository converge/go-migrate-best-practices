
# go-migrate-best-practices

Who am I? nobody, I just want to share what I think good go-migrate best practices are. feel free to drop a message, and propose changes.

This project uses go-migrate: https://github.com/golang-migrate/migrate

## steps:

### 0 .env

Create a .env file in the project root folder, and add the following content:

```
POSTGRES_USER=dear-user
POSTGRES_PASSWORD=dear-passwd
POSTGRES_HOST=dear-postgresql
POSTGRES_PORT=5432
POSTGRES_DB=dear-ap
```

### 1. initialize database and application container

`docker compose up`

### 2. enter the container

2. `docker exec -it dear-container sh`

### 3. create migration

`migrate create -ext sql -dir internal/repositories/migrations -seq initial_ddl`

###  4. run migration (up/down)

`task migration-up`

# todo:

```
- run container with less privileges
```
