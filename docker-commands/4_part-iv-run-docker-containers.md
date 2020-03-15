# Part IV - Run Docker Containers

### Create a Docker Container

Display a list of your Docker Containers

```bash
docker container ls -a
```

**The <font color="red">*-a*</font> flag shows all containers - the default is only <font color="red">*running*</font> containers** 



Create a Container from your Docker Image

```bash
docker container run -it --name my_cont my_image
```



Exit the Docker Container interactive terminal, to return to your terminal prompt

Press the ***Control***, ***P***, and ***Q*** keys



Display a list of your Docker Containers

```bash
docker container ls -a
```



------



### Attach to a Running Container

Display a list of your Docker Containers

```bash
docker container ls -a
```



Attach to your running Container

```bash
docker container attach my_cont
```



Locate the Python script in your Container

```bash
ls -l
```



Run the Python script in your Container and follow the prompts

```bash
python my_script.py
```



Exit the Docker Container interactive terminal, to return to your terminal prompt

Press the ***Control***, ***P***, and ***Q*** keys



------



### Stop a Running Container

Display a list of your Docker Containers

```bash
docker container ls -a
```



Stop your running Container:

```bash
docker container stop my_cont
```



Display a list of your Docker Containers again, to observe the new container ***state***

```bash
docker container ls -a
```



------



### Start a Stopped Container

Display a list of your Docker Containers

```bash
docker container ls -a
```



Start  your stopped Container:

```bash
docker container start my_cont
```



Display a list of your Docker Containers again, to observe the new container ***state***

```bash
docker container ls -a
```



------



### Remove a Container

Display a list of your Docker Containers

```bash
docker container ls -a
```



Stop your running Container:

```bash
docker container stop my_cont
```



Remove your stopped Container:

```bash
docker container rm my_cont
```



Display a list of your Docker Containers again, to see the result of the ***removal***

```bash
docker container ls -a
```



------



### Creater a Docker Container With a Mapped Volume

Create a new directory and file on your computer with VIM

```
mkdir my_file
cd my_dir
vi my_file
```

Press the ***i*** key to enter editing mode

Type some text in the file

``````bash
This is some text
``````

Press the ***escape*** key to exit editing mode

Type ***:x*** to save the file and exit VIM



Create a new Docker Container and map your new directory to the Container as a Volume

``````bash
echo $PWD # This command isn't required, it just shows the value of the $PWD variable
docker container run -itv $PWD:/app/files --name my_cont my_image
``````

**The *$PWD* variable returns the full path to your current working directory**



Observe the mapped volume from your computer in your new Container

``````bash
ls -l
cd files
cat my_file
``````

