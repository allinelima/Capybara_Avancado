
1° page  PGADMIN
docker run --name pgdb --network=skynet -e "POSTGRES_PASSWORD=qaninja" -p 5432:5432 -v var/lib/postgresql/data -d postgres

docker run --name pgadmin --network=skynet -e "PGADMIN_DEFAULT_EMAIL=root@qaninja.io" -e "PGADMIN_DEFAULT_PASSWORD=qaninja" -p 15432:80 -d dpage/pgadmin4

2° DATABASE API USERS
docker pull  papitoio/nflix-api-users

3° DATABASE API USERS
docker run --name nflix-api-users --network=skynet -e "DATABASE=pgdb" -p 3001:3001 -d papitoio/nflix-api-users

como acessar http://0.0.0.0:3001 - http://0.0.0.0:3001/apidoc/

4° DATABASE API MOVIES

docker pull papitoio/nflix-api-movies

5° DATABASE API MOVIES

docker run --name nflix-api-movies --network=skynet -e "DATABASE=pgdb" -p 3002:3002 -d papitoio/nflix-api-movies

Como acessar http://0.0.0.0:3002  - http://0.0.0.0:3002/apidoc/

6° DATABASE API GATEWAY

docker pull papitoio/nflix-api-gateway

7° DATABASE API GATEWAY

docker run --name nflix-api-gateway --network=skynet -e "DATABASE=pgdb" -e "API_USERS=http://nflix-api-users:3001" -e "API_MOVIES=http://nflix-api-movies:3002" -p 3000:3000 -d papitoio/nflix-api-gateway

8° SUBINDO A API USER

docker pull papitoio/nflix-api-users

docker run --name nflix-api-users --network=skynet -e "DATABASE=pgdb" -p 3001:3001 -d papitoio/nflix-api-users

9° SUBINDO A API WEB

docker run --name nflix-web --network=skynet -e "VUE_APP_API=http://0.0.0.0:3000" -p 8080:8080 -d papitoio/nflix-web










