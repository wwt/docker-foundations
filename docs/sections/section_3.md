# :whale: :memo: Build a `Dockerfile`

This section will guide you through building a `Dockerfile` that will be used as part of the integration with Visual Studio Code.

**Scenario:** *Imagine you want to start a new Python-based development project and need to get your development environment setup and ready.*

!!! quote
    A `Dockerfile` is a text document that contains all the commands a user could call on the command line to assemble an image. Using `docker build` users can create an automated build that executes several command-line instructions in succession.

A Dockerfile defines how an image is built.  Once built, the Docker image is is the blueprint that will be used to instantiate an ephemeral instance called a container.

## :cd: Selecting a Base Image

Typically, the image that you will build for your projects will be based on a foundational image someone else created.  There are a significant number of existing images that you can use as the base of your image.

The best approach is to visit [Docker Hub](https://hub.docker.com) and see what images are available based on the focus on your project.

**Scenario:** *Your project is Python-based so the base image will be one of the available Python images.*

There are very simple filtering and searching capabilities on Docker Hub that make it easy to quickly narrow down the options for your base image.

1. *NAVIGATE* to https://hub.docker.com
2. *CLICK* **Explore**
3. *CLICK* **Official Images**
4. *CLICK* **Programming Languages**
5. *CLICK* **Python**

![DockerHub Base Image Search](../images/dockerhub-base-image-search.gif)

Feel free to review the available images and read the supporting documentation about the images.  This example will utilize a Python base image named **slim-buster**.

!!! info
    Here are some instructions for building a base image if you so desire: [Base Images](https://docs.docker.com/develop/develop-images/baseimages/)

## Create the Initial Dockerfile

Once you have selected the desired base image you can start to build your `Dockerfile` for the project. The first line of a Dockerfile is *almost* always the [`FROM`](https://docs.docker.com/engine/reference/builder/#from) command.  The only other command that can precede  `FROM` is `ARG`.  This section keeps it simple and uses only `FROM`

1. *CREATE* a **new file** named **Dockerfile** in the *root* of your project directory
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

In the Dockerfile you can use the [`RUN`](https://docs.docker.com/engine/reference/builder/#run) command to provide instructions to perform these package installations.  The `RUN` instruction can be used for executing commands on the target container.  This section will use the *shell* syntax.  Check the Docker documentation for more information.

```dockerfile
# Update Debian Packages and Install Git
RUN apt-get update && apt-get -y install git
```

Since this will be our development environment we will need to have `git` installed in the container.

## :open_file_folder: Create a Working Directory

A Working Directory is set to be the source directory for all subsequent `RUN`, `CMD`, `COPY`, and `ADD` Dockerfile Instructions.  This walk-through will create a `/development` directory in our container and set it as our **working directory**

!!! tip
    If the directory doesn't exist it will be created automatically.

1. *APPEND* the `WORKDIR` instruction to the `Dockerfile`

```dockerfile
# Set the new directory
WORKDIR /development
```

## Copy Files

Another common need is to copy files into the container.  When using the container as a development environment, Visual Studio Code will automatically **mount** the project directory and make the files available within the container.  This relates to files you need to have available in the Docker image (aside from your development repo) like the `requirements.txt` file so we can install packages.

**Scenario:** *The python project will require a couple of additiona. python packages.  Create a `requirements.txt` file and make sure it's available to your Docker image.*

1. *CREATE* a **file** named `requirements.txt` in the project root directory

2. *ADD* the **text** below to the file

   ```text
   pyaml
   requests
   flake8
   ```

3. *SAVE* the **file**

4. *APPEND* the `COPY` instruction to the `Dockerfile`

    ```dockerfile
    # Copy requirements.txt into Container
    COPY requirements.txt /development
    ```

## :snake: Installing Python Requirements

**Scenario:** *Just having the requirements.txt file will not install the required packages.  Add the 'RUN' command to the `Dockerfile` to install your python project requirements.*

1. *APPEND* the `RUN` instruction to the `Dockerfile` to **install** the python requirements

    ```dockerfile
    # Install Python Requirements
    RUN pip install -r requirements.txt
    ```

!!! info
    The 'RUN' command above will look for the `requirements.txt` file in the `WORKDIR` which is where you copied the file.

## Final File

If you have followed all of the instructions, your final Dockerfile will look similar to this:

!!! tip
    The `LABEL` instruction will have your information.

```dockerfile
FROM python:slim-buster

# Define some meta data
LABEL author="Jeff Andiorio" email="jeff.andiorio@wwt.com"

# Update Debian Packages and Install Git
RUN apt-get update && apt-get -y install git

# Set the new directory
WORKDIR /development

# Copy requirements.txt into Container
COPY requirements.txt /development

# Install Python Requirements
RUN pip install -r requirements.txt

```

## What's Next

Now that you have the completed `Dockerfile` created and have successfully utilized several of the basic Dockerfile instructions how can you use that file?
