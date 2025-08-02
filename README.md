# new-pc

# Get chrome

https://www.google.cn/intl/zh-CN/chrome/

# Setup Git

https://git-scm.com/downloads/win

1 Download git and install it
2 Set git bin\* to system path

# DockerDesktop

https://www.docker.com/products/docker-desktop/

## setup -> Advance -> Manually update WSL2 by self

# WSL

```powershell
wsl --update
wsl --list --verbose
```

install online version (if fail, download the wsl package from : https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

```
wsl --list --online
#wsl --install -d ubuntu
wsl --install -d  Ubuntu-20.04
```

# Resource setup

change the docker image location to non-system driver

## connect docker through pipe

add this entry to docker setting

```json
{
  "hosts": ["npipe:////./pipe/docker_engine"]
}
```

verfication

```
docker --host npipe:////./pipe/docker_engine info
```

```
docker pull hello
#Using default tag: latest
#error during connect: Post "http://%2F%2F.%2Fpipe%2FdockerDesktopLinuxEngine/v1.47/images/create?fromImage=hello&tag=latest": open //./pipe/#dockerDesktopLinuxEngine: The system cannot find the file specified.
```

# Idea

https://www.jetbrains.com/idea/download/

Scroll down the community version and download zip version

# Maven

https://maven.apache.org/download.cgi

```sh
curl -k https://dlcdn.apache.org/maven/maven-3/3.9.10/binaries/apache-maven-3.9.10-bin.zip -o maven-3.9.10.zip
```

# Repo

https://developer.aliyun.com/mirror/

# Setup VSCode

EDIT THE SETTING FILE

# python

Python Releases for Windows | Python.org

# java

Get it on IntelliJ
