# We.js framework image

Build for production environment

Docker hub url: https://hub.docker.com/r/wejs/wejs

## Usage:

Run host local We.js project in port 5000 and keep terminal open:

```
docker run --name=wejs_blog -v $(pwd):/usr/src/app -p 5000:4000 -it wejs
```

## Build commands:

```
docker build -t wejs .
```

## Tag and save in docker registry:

```
docker tag wejs:latest wejs/wejs:v1.0.1
```

```
docker tag wejs:latest wejs/wejs:latest
```

### Send to docker hub

```
docker push wejs/wejs:v1.0.1
```

```
docker push wejs/wejs:latesr
```