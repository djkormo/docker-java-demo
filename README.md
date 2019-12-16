# docker-java-demo

### Install portainer for simple debug
 
```console
docker pull portainer/portainer
```

### On linux

```console
docker run -d -p 9000:9000 --name portainer-linux --restart always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
```

### On Windows
```console
docker volume create portainer_data

docker run -d -p 9000:9000 -v //var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data  \
 --name portainer-windows portainer/portainer
``` 

### Building image
```console
docker build -t sb-java-demo .
```

###  Running image 

```console
docker run -p 8080:8080 -d sb-java-demo
```


