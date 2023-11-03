## RabbitMQ-Streams Docker image

### Build locally
```
export TAG="3.12.8-management"; docker build --build-arg "TAG=${TAG}" . -t giufus/stream-support-rabbitmq:${TAG} -t giufus/stream-support-rabbitmq
```

### Build and push to Docker Hub (using version 3.12.8-management)  
```
export TAG="3.12.8-management"; docker buildx build --build-arg "TAG=${TAG}" --push --platform=linux/amd64,linux/arm64 . -t giufus/stream-support-rabbitmq:${TAG} -t giufus/stream-support-rabbitmq
```

### Run a self destructive container
```
docker run -p 5672:5672 -p 15672:15672 -p 5552:5552 --rm giufus/stream-support-rabbitmq
```

### Login to web console
```
guest/guest @ http://localhost:15672
```