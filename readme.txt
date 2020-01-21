1. build image

`docker build -t postgre12-plv8 .`

2. start docker image

`docker run --name some-postgre12 -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgre12-plv8`

3. enable plv8

`CREATE EXTENSION plv8;`