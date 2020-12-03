# Apache Superset in Docker

## Build container:

`docker build -t <TAG> .`

## If PostgreSQL and Redis are installed:

1. Start app

`docker run -d -e DATABASE_DB=superset2 --network <NETWORK_NAME> -e DATABASE_HOST=<DB_HOST> -e DATABASE_PASSWORD=<PASSWORD> -e DATABASE_USER=<USER> -e DATABASE_PORT=5432 -e DATABASE_DIALECT=postgresql -e PYTHONPATH=/pythonpath/:/pythonpath/pythonpath_dev -e REDIS_HOST=<REDIS_HOST> -e REDIS_PORT=6379 --entrypoint=/pythonpath/docker-entrypoint.sh -p 8088:8088 --name mysuperset2_app mysuperset2 /pythonpath/docker-bootstrap.sh app`

2. Start worker

`docker run -d -e DATABASE_DB=superset2 --network <NETWORK_NAME> -e DATABASE_HOST=<DB_HOST> -e DATABASE_PASSWORD=<PASSWORD> -e DATABASE_USER=<USER> -e DATABASE_PORT=5432 -e DATABASE_DIALECT=postgresql -e PYTHONPATH=/pythonpath/:/pythonpath/pythonpath_dev -e REDIS_HOST=<REDIS_HOST> -e REDIS_PORT=6379 --entrypoint=/pythonpath/docker-entrypoint.sh --name mysuperset2_worker mysuperset2 /pythonpath/docker-bootstrap.sh worker`

