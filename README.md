# Table Of Contents

 - [Introduction](#introduction)
 - [Version](#version)
 - [Usage](#usage)
     - [Pull The Image](#pull-the-image)
     - [Run The Image](#run-the-image)
 - [Configuration](#configuration)
     - [Available Configuration Parameters](#available-configuration-parameters) 
 - [References](#references)

# Introduction

container de maintenance

contient :

* tmux
* resurrect
* git
* tig
* vim
* todo.txt version 2.10

# Version

Current Version: **0.0.2**

# Usage

## Pull The Image

Pull the latest image, which is *HEAD* of the git repository.

```bash
docker pull grillon/stamain
```


## Run The Image

For example.

```bash
docker run -p 22 -t -i grillon/stamain
```

# Configuration

## Available Configuration Parameters

 - **STAMAIN_UID** nom uid gid
 - **STAMAIN_PUID** nom uid gid du user principal
 - **STAMAIN_GID** nomGroupe gid
 - **STAMAIN_PGID** nomGroupe gid du groupe principal
 - **STAMAIN_PASSWORD** oups...

# References

 * https://docs.docker.com/engine/articles/using_supervisord/
 * https://github.com/grillon/stamain
