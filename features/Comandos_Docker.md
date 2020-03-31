## Principais comandos:

### Parar e remover os seguintes containers:

docker stop nflix-api-movies
docker rm nflix-api-movies
docker stop nflix-api-gateway
docker rm nflix-api-gateway
docker stop nflix-web
docker rm nflix-web


### Atualizar a imagem dos containers:
docker pull papitoio/nflix-api-movies
docker pull papitoio/nflix-api-gateway
docker pull papitoio/nflix-web

### Subir novos containers:

#### API Movies
docker run --name nflix-api-movies --network=skynet -e "DATABASE=pgdb" -p 3002:3002 -d papitoio/nflix-api-movies

#### API Gateway
docker run --name nflix-api-gateway --network=skynet -e "API_USERS=http://nflix-api-users:3001" -e "API_MOVIES=http://nflix-api-movies:3002" -p 3000:3000 -d

#### WebApp

#### Docker Normal:​

docker run --name nflix-web --network=skynet -e "VUE_APP_API=http://localhost:3000" -p 8080:8080 -d papitoio/nflix-web

#### Docker ToolBox

docker run --name nflix-web --network=skynet -e "VUE_APP_API=http://192.168.99.100:3000" -p 8080:8080 -d papitoio/nflix-web