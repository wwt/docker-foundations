# Setup: Create and Open a New Project

This section will guide you through creating a new repository on [GitHub](https://github.com) and opening that new repository in Visual Studio Code.

!!! note
There are multiple approaches to accomplish these same tasks. This section represents one workflow.

## Create a Repo on GitHub

This workflow will start with creating a repository for your project on GitHub. GitHub provides remote version control system for your local repository and many advanced collaboration capabilities.

You can learn more about GitHub in the [GitHub Documentation](https://docs.github.com/en/github).

!!! note
**Additional Resources**

    [Git Foundations Walk Through](https://wwt.github.io/git-foundations/)

    [Version Control Lab](https://www.wwt.com/lab/programmability-foundations-lab)

    [Version Control Video](https://www.wwt.com/video/introduction-to-version-control)

1. _NAVIGATE_ to [**GitHub**](www.github.com)

2. _CLICK_ the **New** button next to **Repositories**

   ![image-20210611093355694](../images/github-home.png)

   ![GitHub New Repo](../images/new-github-repo.png)

3. _NAME_ the repo **docker-foundations-lab** (#1 in the image above)

4. _SET_ the repo to **Private** (#2 in the image above)

5. _CLICK_ **Add a README file** (# 3 in the image above)

6. _CLICK_ **Add .gitignore** and _SELECT_ **Python** (# 3 in the image above)

7. _CLICK_ **Choose a license** and _SELECT_ **Apache License 2.0** (# 3 in the image above)

8. _CLICK_ **Create Repository** (# 4 in the image above)

[![image-20210611094825116](../images/created-repo.png)](../../images/created-repo.png){target=\_blank}

Now that you have created your new repository on GitHub you can move forward with opening this new project in Visual Studio Code.

## Opening Your Repo in Visual Studio Code

There are two ways to approach this step:

1. Manually clone the repo from the terminal
2. Use the functionality built into Visual Studio Code

### Manually Clone Method

1.  _NAVIGATE_ to your repo on GitHub

2.  _CLICK_ the **Code** button

3.  _SELECT_ the transport (HTTPS or SSH)

4.  _CLICK_ the **Copy** icon
    ​ [![copy-github-clone-string](../images/copy-github-clone-string.png)](../../images/copy-github-clone-string.png){target=\_blank}

5.  _OPEN_ a new **Terminal**

6.  _PASTE_ `git clone` plus that string into your **Terminal**

    !!! example
    **SSH** `git clone git@github.com:jandiorio/docker-foundations-lab.git`

        **HTTPS** `git clone https://github.com/jandiorio/docker-foundations-lab.git`

    !!! important
    The command above will clone down the repository creating a subfolder with the name of the repo in the folder where you ran the command.

    ![Clone Project Repo](../images/clone-project-repo-manual.gif)

7.  _OPEN_ the new Folder in Visual Studio Code using **Open Folder**

### Clone and Open Directly in Visual Studio Code

1. _OPEN_ a new **Visual Studio Code Window**

2. _CLICK_ the **Explorer** icon <img src="../../images/explorer-icon.png" alt="image-20210611101144837" style="zoom:33%;" />

3. _CLICK_ **Clone Repository**

   ![VSC Repo Clone](../images/vsc-clone-repo.png)

4. PASTE repository string

   ![VSC Paste Repo](../images/vsc-paste-repo-string.png)

5. _SELECT_ the **parent directory**

   !!! tip
   I have a folder named development where all of my development projects are located.

6. _CLICK_ **Open** in the dialog prompt to **_Open the Repository_**
   <img src="../../images/vsc-open-cloned-repo.png" alt="image-20210611102053356" style="zoom:50%;" />

## What's Next

:tomato: Now you are ready to get to the “meat” of the tomato...next you will walk through the basics of building a `Dockerfile`.
