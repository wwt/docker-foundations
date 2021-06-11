# :whale: :memo: Build a `Dockerfile`

This section will guide you through building a `Dockerfile` that will be used as part of the integration with Visual Studio Code.

!!! quote
    A `Dockerfile` is a text document that contains all the commands a user could call on the command line to assemble an image. Using `docker build` users can create an automated build that executes several command-line instructions in succession.

A Dockerfile defines how an image is built.  Once built, the Docker image is is the blueprint that will be used to instantiate an ephemeral instance called a container.

## :cd: Selecting a Base Image

Typically, the image that you will build for your projects will be based on a foundational image someone else created.  There are a significant number of existing images that you can use as the base of your image.

The best approach is to visit [Docker Hub](https://hub.docker.com) and see what images are available based on the focus on your project.

There are very simple filtering and searching capabilities on Docker Hub that make it easy to quickly narrow down the options for your base image.

1. *NAVIGATE* to https://hub.docker.com
2. *CLICK* **Explore**
3. *CLICK* **Official Images**
4. *CLICK* **Programming Languages**
5. *CLICK* **Python**

![DockerHub Base Image Search](../images/dockerhub-base-image-search.gif)

Feel free to review the available images and read the supporting documentation about the images.  This example will utilize a Python base image and specifically [`3.9.5-slim-buster`](https://github.com/docker-library/python/blob/4c919b943df198286386e00dff51c9cf4074c18d/3.9/buster/slim/Dockerfile)

!!! info
    Here are some instructions for building a base image if you so desire: [Base Images](https://docs.docker.com/develop/develop-images/baseimages/)

## Create the Initial Dockerfile

Once you have selected the desired base image you can start to build your `Dockerfile` for the project.

1. *CREATE* a **new file** named **Dockerfile** in the root of your project directory
2. *ADD* the following first **line**

​    `FROM python:slim-buster`

![Create Dockerfile](../images/dockerfile-from.gif)

## Providing Meta Data

Using the [`LABEL`](https://docs.docker.com/engine/reference/builder/#label){target=_blank} command we can include some information about the Dockerfile to increase supportability down the road.  The `LABEL` command allows you to define a series of **key** and **value** pairs of attributes.

```dockerfile
# Define some meta data
LABEL author="Jeff Andiorio" email="jeff.andiorio@wwt.com"
```

## Installing OS Requirements

There will be many occassions where you will need to add some OS level packages that rely on a package manager for installation.  In this case we are on a Debian Linux based system which uses `apt` as a package manager.  

In the Dockerfile you can use the `RUN` command to provide instructions to perform these package installations. 

```dockerfile
# Update Debian Packages and Install Git
RUN apt-get update && apt-get -y install git
```

Since this will be our development environment we will need to have `git` installed in the container. 

## :open_file_folder: Create a Working Directory

```dockerfile
# Create a Working Directory
RUN mkdir -p /development

# Set the new directory
WORKDIR /development
```

## Copy Files

```dockerfile
# Copy requirements.txt into Container
COPY requirements.txt /development
```



## :snake: Installing Python Requirements

```dockerfile
# Install Python Requirements
RUN pip install -r requirements.txt
```

## Final File


```dockerfile
FROM python:slim-buster

# Define some meta data
LABEL author="Jeff Andiorio" email="jeff.andiorio@wwt.com"

# Update Debian Packages and Install Git
RUN apt-get update && apt-get -y install git

# Create a Working Directory
RUN mkdir -p /development

# Set the new directory
WORKDIR /development

# Copy requirements.txt into Container
COPY requirements.txt /development

# Install Python Requirements
RUN pip install -r requirements.txt

```


