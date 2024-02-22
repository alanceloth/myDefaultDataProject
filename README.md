
Welcome to my default Data Project Repo.

To use this project structure you will need to follow the steps below.

# Requirements
To use this project properly, you will need to install:
- [python](https://www.python.org/downloads/)
- [git](https://git-scm.com/downloads)
- [pyenv](https://pypi.org/project/pyenv/)
- [poetry](https://python-poetry.org/)

To install and configure Pyenv and Poetry in Windows, check [this video](https://www.youtube.com/watch?v=547Jr26duHQ&pp=ygUgaG93IHRvIGluc3RhbGwgcG9ldHJ5IGluIHdpbmRvd3M%3D).
To learn how to manage multiple python versions using pyenv, check [this article](https://realpython.com/intro-to-pyenv/).

# Installation Steps

## Git Clone
Open a terminal window (cmd, bash, or anything with git commands) and type:
```bash
git clone https://github.com/alanceloth/myDefaultDataProject.git [NEW_PROJECT_NAME]
cd [NEW_PROJECT_NAME]
git init
```

## Create new GitHub Repo from existing one
In the terminal window, type:
```bash
gh repo create
```
Choose the third option: Push an existing local repository to GitHub.
Choose the current path (just put a dot "." and hit enter)
Follow the instructions on screen, add a remote called 'master', and that's it!

## Setting up the environment
We will need python 3.11.5, and to get this version we will use pyenv.
In the same terminal window, type:

If you never used pyenv, or if you don't have the 3.11.5 version in your pyenv:
```bash
pyenv update
pyenv install --l
```

If you find the 3.11.5, then it's everything correct.
```bash
pyenv install 3.11.5
```

To check the python versions installed, use this:
```bash
pyenv versions
```

You will notice that one of the versions will have a * symbol. This indicates that the system is using this version.
You can also check the default python version used by the system with this:
```bash
which python
```

If you have the 3.11.5 version in your pyenv:
To use the project python version (3.11.5), use the command below:
```bash
pyenv local 3.11.5
```

## Poetry

To initialize the poetry in the project, type in the terminal:
```bash
poetry env use 3.11.5
poetry shell
poetry install --no-root
```

## Testing

In the terminal:
```bash
duckdb
```
If the above code don't work properly, go to the [duckdb download page](https://duckdb.org/docs/installation/index?version=latest&environment=cli&installer=binary&platform=win) and get the latest zip file. Extract the duckdb.exe and put inside your project folder. This will allow you to use the duckdb in the terminal.
Another option is to do the winget installation step recomended in the documentation (for windows, for other OS check the documentation).

```bash
winget install DuckDB.cli
```

# Folder Structure

The basic project folder structure are shown below.
```bash
.
├── .vscode
├── docs
├── scripts
├── src
└── tests
```

.vscode: VSCODE setting to the project session, like font size.
docs: documentation folder, will store the mkdocs index.md
scripts: any script related to automation, instalation, compilation, test execution.
src: the source code folder
tests: the automated test folder to check the source code


# Contact

LinkedIn: [Alan Lanceloth Rodrigues Silva](https://www.linkedin.com/in/alanlanceloth/)

E-mail: [alan.lanceloth@gmail.com](mailto:alan.lanceloth@gmail.com)
