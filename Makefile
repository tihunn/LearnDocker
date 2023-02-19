mongo:
	docker run -p 27017:27017 -d --rm --name mongodb --network notes-net -v mongo-data:/data/db --env-file ./config/development.evn mongo

server:
    docker run -d -p 5000:5000 -d --rm --name nodetest --network notes-net --env-file ./config/development.evn -v C:/docker-mern/docker-mern/server:/app -v /app/node_modules nodetest

client:
    docker run -d -p 3000:3000 -d --rm --name fronttest -v C:/docker-mern/docker-mern/client/src:/app/src --env-file ./config/development.evn fronttest

dev:
    docker-compose -f docker-compose.yml up -d

build:
    docker-compose -f docker-compose.production.yml build