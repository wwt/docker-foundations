# Part IV - Run Docker Containers

### Create a Docker Container

Display a list of your Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```

**The <font color="red">*-a*</font> flag shows all containers - the default is only <font color="red">*running*</font> containers.** 



Create and start a Container from your Docker Image with either of these commands:

```bash
docker container run -it --name my_cont my_image
docker run -it --name my_cont my_image
```



Exit the Docker Container interactive terminal, to return to your terminal prompt:

Press the ***Control***, ***P***, and ***Q*** keys.



Display a list of your running Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```



------



### Attach to a Running Container

Display a list of your Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```



Attach to your running Container with either of these commands:

```bash
docker container attach my_cont
docker attach my_cont
```



Locate the Python script in your Container:

```bash
ls -l
```



Run the Python script in your Container and follow the prompts:

```bash
python my_script.py
```



Exit the Docker Container interactive terminal, to return to your terminal prompt:

Press the ***Control***, ***P***, and ***Q*** keys.



------



### Stop a Running Container

Display a list of your Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```



Stop your running Container with either of these commands:

```bash
docker container stop my_cont
docker stop my_cont
```



Display a list of your Docker Containers again, to observe the new container ***state*** with either of these commands:

```bash
docker container ls -a
docker ps -a
```



------



### Start a Stopped Container

Display a list of your Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```



Start  your stopped Container with either of these commands:

```bash
docker container start my_cont
```



Display a list of your Docker Containers again, to observe the new container ***state*** with either of these commands:

```bash
docker container ls -a
docker ps -a
```



------



### Remove a Container

Display a list of your Docker Containers with either of these commands:

```bash
docker container ls -a
docker ps -a
```



Stop your running Container with either of these commands:

```bash
docker container stop my_cont
docker stop my_cont
```



Remove your stopped Container with either of these commands:

```bash
docker container rm my_cont
docker rm my_cont
```



Display a list of your Docker Containers again, to see the result of the ***removal*** with either of these commands:

```bash
docker container ls -a
docker ps -a
```



------



### Creater a Docker Container With a Mapped Volume

Create a new directory and file on your computer with VIM:

```
mkdir my_file
cd my_dir
vi my_file
```

Press the ***i*** key to enter editing mode.

Type some text in the file:

``````bash
This is some text
``````

Press the ***escape*** key to exit editing mode.

Type ***:x*** to save the file and exit VIM.



Create a new Docker Container and map your new directory to the Container as a Volume:

``````bash
echo $PWD # This command isn't required, it just shows the value of the $PWD variable

# Command option #1
docker container run -itv $PWD:/app/files --name my_cont my_image

# Command option #2
docker run -itv $PWD:/app/files --name my_cont my_image
``````

**The *$PWD* variable returns the full path to your current working directory.**



Observe the mapped volume from your computer in your new Container:

``````bash
ls -l
cd files
cat my_file
``````

