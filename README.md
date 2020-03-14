# Docker Foundations Hands-On Walkthrough
Get ready to learn Docker!  Whether you've never heard of Docker or have some experience and want to brush up, this repo will help you, as the title implies:

- Learn about the foundational elements of Docker
- Get you hands-on experience with Docker

Here is my disclaimer...I am NOT a Docker pro, expert, guru, or anyone else that you might want to learn *advanced* Docker topics from.  That said, I can help you learn the basics which will give you a good understanding of:

- Why Docker matters
- How Docker works
- How to functionally use Docker for your own purposes

This repo is heavy in Docker hands-on so that the *result* of your learning will be your ability to comfortably use Docker and explain or teach it to someone else.  I believe that learning the information in this repo will give you the tools you need to pass the **Cisco DevNet Associate** exam.



## Get Started

To use this repo:

1. Download the repo files in one of two ways
   - Use Git to clone the repo to your computer
     - HTTP - `git clone https://github.wwt.com/hullt/docker-foundations.git`
     - SSH - `git clone git@github.wwt.com:hullt/docker-foundations.git `
   - If you don't know how to use Git, you can download the repo files at:
     - https://github.wwt.com/hullt/docker-foundations/archive/master.zip
2. Open the PowerPoint presentation ***docker-foundations.pptx*** and start slide show mode
   - I use animation to help deliver the topics in small chunks and much of the presentation will look like a mess if you don't navigate the animation in slide show mode
   - The hands-on sections lists all of the Docker commands you need to follow along with each task plus screen recordings which demonstrate each task 
   - I include my presenter notes on every slide and if you have a second monitor you can click through the slide show and read the script concurrently
3. The repo includes subfolders which contain reference files and scripts for the hands-on portion of the slide show
   - The [***docker-images***](/docker-images) folder contains:
     - A complete copy of the Dockerfile you will build (***Dockerfile***)
     - A small Python script that you build into your Docker Image (***my_script.py***)
       - You do NOT need to know ANY Python to use this repo
   - The [***docker-compose***](/docker-compose) folder contains:
     - A Dockerfile to support the Images you will build with Docker Compose (***Dockerfile***)
     - A Docker Compose YAML file (***docker-compose.yml***)
     - A Python script which runs the web application you will build with Docker Compose (***app.py***)
   - The [***docker-commands***](/docker-commands) folder contains:
     - Markdown files with all of the Docker commands from the hands-on sections in the presentation



## Feedback

I welcome any feedback or changes to the repo!  Please create a Git Pull Request or contact me if you want to make any changes and let me know if you have ANY questions; especially if you get stuck on something.

I wish you success with your Docker learning journey!



Tim Hull - tim.hull@wwt.com