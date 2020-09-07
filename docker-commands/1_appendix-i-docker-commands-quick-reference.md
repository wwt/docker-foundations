# Appendix I - Docker Commands Quick Reference

Show Docker version information:

```bash
docker --version
```



Display a list of Docker Images:

```bash
docker image ls
```



Create a Docker Image from a Dockerfile with either of these commands:

```bash
docker build -t <image_name> .
docker image build -t <image_name> .
```

**Replace <font color="red">*<image_name>*</font> with the name of your choice.**

**Don't forget the trailing dot, to indicate the Dockerfile is within your current working directory.**



Remove a Docker Image with either of these commands:

```bash
docker image rm <image_name>
docker image rm <image_id>
```

**Replace <font color="red">*<image_name>*</font> or <font color="red">*<image_id>*</font> with the appropriate Image ID value from the list of your Docker Images.**



Display a list of **all running** Docker Containers:

```bash
docker container ls
```



Display a list of **all** Docker Containers:

```bash
docker container ls -a
```



Create and start a Container from a Docker Image:

```bash
docker container run -it --name <container_name> <base_image_name>
```

**Replace <font color="red">*<container_name>*</font> with the name of your choice.**

**Replace <font color="red">*<base_image_name>*</font> with the name of the Image which will produce the Container.**



***Docker Container Run*** command flags:

```bash
-i # Run the Container in 'interactive' mode
```

```bash
-t # Create a pseudo-TTY session to the Container
```

```bash
--name # Assign a unique name to the Container
```

```bash
-v host_directory_or_volume:container_directory # Mount a volume to the container
```

```bash
-p host_port:container_port # Publish a container port to the host
```

```bash
-d # Run the container in the background (detached mode)
```

```bash
--rm # Automatically remove the container on exit
```



Exit the interactive shell of a Container and return to your terminal shell **without stopping** the Container:

```bash
control + p + q
```



Exit the interactive shell of a Container and return to your terminal shell **and stop** the Container:

```bash
control + d
```



Attach to a  running Container:

```bash
docker container attach <container_name>
```

**Replace <font color="red">*<container_name>*</font> with the name of the container.**



Stop a running Container:

```bash
docker container stop <container_name>
```

**Replace <font color="red">*<container_name>*</font> with the name of the container.**



Stop all running Docker Containers:

```bash
docker container stop $(docker container ls -q)
```



Start a stopped Container:

```bash
docker container start <container_name>
```

**Replace <font color="red">*<container_name>*</font> with the name of the container.**



Remove a stopped Container:

```bash
docker container rm <container_name>
```

**Replace <font color="red">*<container_name>*</font> with the name of the container.**



Run a shell command in a Container from the Docker Host terminal:

```bash
docker exec -it <command_to_execute>
```



Show a summary of Docker storage consumption:

```bash
docker system df
```



Show verbose details of Docker storage consumption:

```bash
docker system df -v
```



Remove all ***stopped*** Containers:

```bash
docker container prune
```



Remove all ***dangling*** and ***unused*** Images - those with no associated Containers:

```bash
dockr image prune -a
```

