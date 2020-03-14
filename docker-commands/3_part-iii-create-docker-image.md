# Part III - Create a Docker Image

### Build Docker Images

Display a list of your Docker Images

`docker image ls`



Change the working directory in your terminal application to the directory with your Dockerfile

`cd ~/code`



Create a Docker Image from your Dockerfile with either of these commands

`docker built -t my_image .`

`docker image built -t my_image .`

**Don't forget the trailing dot, to indicate the Dockerfile is with your current working directory**



------



### Remove Docker Images

Display a list of your Docker Images

`docker image ls`



Remove your Docker Image with either of these commands

`docker image rm my_image`

`docker image rm image_id` 

**Replace *image_id* with the value from the output listing your Docker Images**



If you receive an error when you attempt to remove your Docker image, add the ***-f*** flag to force removal

`docker image rm -f my_image`



Display a list of your Docker Images to confirm removal of your Image

`docker image ls`



------



### Docker Image Challenge

Rebuild your Docker Image

`docker image built -t my_image .`

**Don't forget the trailing dot, to indicate the Dockerfile is with your current working directory**