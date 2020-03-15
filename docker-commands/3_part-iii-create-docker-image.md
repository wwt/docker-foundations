# Part III - Create a Docker Image

### Build Docker Images

Display a list of your Docker Images

```bash
docker image ls
```



Change the working directory in your terminal application to the directory with your Dockerfile

```bash
cd ~/code
```



Create a Docker Image from your Dockerfile with either of these commands

```bash
docker build -t my_image .
docker image build -t my_image .
```

**Don't forget the trailing dot, to indicate the Dockerfile is within your current working directory**



------



### Remove Docker Images

Display a list of your Docker Images

```bash
docker image ls
```



Remove your Docker Image with either of these commands

```bash
docker image rm my_image
docker image rm #image_id#
```

**Replace <font color="red">*#image_id#*</font> with the appropriate Image ID value from the list of your Docker Images**



If you receive an error when you attempt to remove your Docker image, add the <font color="red">***-f***</font> flag to force removal

```bash
docker image rm -f my_image
```



Display a list of your Docker Images to confirm removal of your Image

```bash
docker image ls
```



------



### Docker Image Challenge

Rebuild your Docker Image

```bash
docker image build -t my_image .
```

**Don't forget the trailing dot, to indicate the Dockerfile is within your current working directory**