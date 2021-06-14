# Integrate Docker with Visual Studio Code

Visual Studio Code provides integrations with Docker that make the elements of your development environment (where you write code + where you execute code) complete seamless and highly portable.

Just including the `Dockerfile` in your repository means anyone collaborating or consuming your code will have an identical execution environment as where developed the solution.

**Scenario:** Integrate our Docker image into Visual Studio Code so we can take advantage of the seamless development environment and utilize feature like the Python Debugger and Integrated terminal.

## Brief Overview of VSC Integration

The Visual Studio Code Remote - Container extension is one of the extensions included with the bundle we installed earlier. This extension allows you to use a container as your fully-integrated development environment, exposing all of the features of Visual Studio Code to you within it.

There are multiple ways to utilize a container as your development environment within Visual Studio Code but we will look at the most _integrated_ and _automated_ method.

[Developing inside a Container](https://code.visualstudio.com/docs/remote/containers)

## Create a `.devcontainer.json` Config File

When Visual Studio Code start it looks for a configuration file named `.devcontainer.json` located either at the project root or in a subfolder named `.devcontainer`. The existence of this file will prompt Visual Studio Code to use the contents of that configuration file to map your development environment to a container.

1. _CREATE_ a **file** named `.devcontainer.json` in the root of your project

2. _ADD_ `json` formatted key/value for the Dockerfile

   ```json
   {
     "dockerFile": "Dockerfile"
   }
   ```

## Add Extensions

Earlier you added some extensions to Visual Studio Code to support the build of our Dockerfile and integration with Visual Studio Code. Since your current project is a Python project you will want to add a Python extension to Visual Studio Code, and to the container specifically.

1. _CLICK_ the **Extensions** <img src="../../images/image-20210610152153324.png" style="zoom:33%;" /> **Icon** on the left
2. _PASTE_ `ms-python.python` in the Search box and _PRESS_ **<enter\>**
3. _RIGHT-CLICK_ the **extension** and select "**Add to ``devcontainer.json`**"

<img src="../../images/add-to-devcontainer.json.png" alt="image-20210614131954531" style="zoom:50%;" />

4. _OPEN_ the **`devcontainer.json`** file and review the change

   ![image-20210614132142489](../images/devcontainer.json.png)

## Open Project in Container

All the pieces are now in place. You will need to reopen your project in the container to have your fully functional Docker container-based development environment activated.

1. _CLICK_ the <img src="../images/remote-connection.png" alt="image-20210614132745015" style="zoom:50%;" /> at the bottom left

2. _SELECT_ **Reopen in Container**

   ![Reopen in Container](../images/reopen-in-container.png)

3. _REVIEW_ the environment

   ![Opened in Container](../images/vsc-opened-in-container.png)

:exclamation: Notice the bottom left corner shows **Dev Container**. This is confirmation that you are connected to a **Remote Container** using the devcontainer integration.

:exclamation: Notice the **terminal** (Open one if it isn't open already) is inside the container. (Should show **root@**...)

:exclamation: Notice a Python Interpreter has been automatically selected for you.

## What's Next

The last thing for you to do is test the environment. The next and last section will provide a very basic review of the environment.
