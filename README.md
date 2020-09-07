# Docker Foundations Hands-On Walkthrough
Get ready to learn Docker!  Whether you've never heard of Docker or have some experience and want to brush up, this repo will help you, as the title implies:

- Learn about the foundational elements of Docker.
- Get you hands-on experience with Docker.

This repo can help you learn Docker basics which will give you a good understanding of:

- Why Docker matters.
- How Docker works.
- How to functionally use Docker for your own purposes.

This repo is heavy in Docker hands-on so that the *result* of your learning will be your ability to comfortably use Docker and explain or teach it to someone else.  I believe that learning the information in this repo will give you the information and skills necessary for the Docker exam topics in the **Cisco DevNet Associate** exam.



## Get Started

To use this repo:

1. Download the repo files in one of two ways:
   - Use Git to clone the repo to your computer.
     - HTTP - `git clone https://github.com/wwt/docker-foundations.git`
     - SSH - `git clone git@github.com:wwt/docker-foundations.git `
   - If you don't know how to use Git, you can download the repo files at:
     - https://github.com/wwt/docker-foundations/archive/master.zip
2. Open the PowerPoint presentation ***docker-foundations.pptx*** and start slide show mode.
   - I use animation to help deliver the topics in small chunks and much of the presentation will look like a mess if you don't navigate the animation in slide show mode.
   - The hands-on sections lists all of the Docker commands you need to follow along with each task plus screen recordings which demonstrate each task.
   - I include my presenter notes on every slide and if you have a second monitor you can click through the slide show and read the script concurrently.
3. The repo includes subfolders which contain reference files and scripts for the hands-on portion of the slide show.
   - The [***docker-image***](https://github.com/wwt/docker-foundations/tree/master/docker-image "docker-image") folder contains:
     - A complete copy of the Dockerfile you will build (***Dockerfile***).
     - A small Python script that you build into your Docker Image (***my_script.py***).
       - You do NOT need to know ANY Python to use this repo.
   - The [***docker-compose***](https://github.com/wwt/docker-foundations/tree/master/docker-compose "docker-compose") folder contains:
     - A Dockerfile to support the Images you will build with Docker Compose (***Dockerfile***).
     - A Docker Compose YAML file (***docker-compose.yml***).
     - A Python script which runs the web application you will build with Docker Compose (***app.py***).
   - The [***docker-commands***](https://github.com/wwt/docker-foundations/tree/master/docker-commands "docker-commands") folder contains:
     - Markdown files with all of the Docker commands fom the PowerPoint presentation, so you can copy and paste the commands to your terminal.
     - A quick reference for common Docker commands and flags.
   - The [***docker-quiz***](https://wwt.github.io/docker-foundations/docker-quiz "docker-quiz") folder contains:
     - A quiz to test your Docker skills.



## Feedback

I welcome any feedback or changes to the repo!  Please create a Git Pull Request or contact me if you want to make any changes and let me know if you have ANY questions; especially if you get stuck on something.

I wish you success with your Docker learning journey!



Tim Hull - tim.hull@wwt.com