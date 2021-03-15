# Docker App for SQL Server Express 2019 !

SQL Server Express 2019 Container for Windows - Docker App (2021)

:suspect: :clipboard: Str0ngP@ssword!



## Install Docker and GIT on Windows
(From this link)

> https://docs.docker.com/docker-for-windows/install/

(From this link)

> https://git-scm.com/download/win

> docker info

> docker --version

> git --version



## Install Docker Compose Windows
(From this link)

> https://docs.docker.com/compose/install/

> [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

> Invoke-WebRequest "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-Windows-x86_64.exe" -UseBasicParsing -OutFile $Env:ProgramFiles\Docker\docker-compose.exe

> docker-compose --version


## Download SQL Express 2019 Installer Files
(From Link)
> https://www.microsoft.com/en-ie/sql-server/sql-server-downloads

> https://go.microsoft.com/fwlink/?linkid=866658

*Double-click on SQL2019-SSEI-Expr.exe and choose 'Download Media'. It will download file SQLEXPRADV_x64_ENU.exe*

*Double-click on SQLEXPRADV_x64_ENU.exe and choose the directory to store the installers. Name the main folder 'source'*



## Download the code and Build the container
> git clone https://github.com/Juli-BCN/sql-2019-docker-win.git

> cd sql-2019-docker-win

*Copy the folder 'source' (which has the installers for SQL Express 2019) into this directory*

> docker image build --tag sql2019 .

> docker images



## Run the new SQL Express 2019 container
(Without volume created)
> docker run --detach -it --name sql2019 --hostname sql2019

(With volume created, assuming C:\volsql directory exists)
> docker run --detach -it --name sql2019 --hostname sql2019 --volume c:\volsql:c:\volsql sql2019

*When creating the database, remember to put the files in path c:\volsql

*Check IP where the container is running with command*
> docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' *container_id*



## Tag & Upload Container to DockerHub
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker push *TARGET_IMAGE:TARGET_TAG*


Like:
> docker image tag sql2019:latest julibcn/sqlexpress19:latest

> docker login

> docker push julibcn/sqlexpress19:latest



## Run SQL Express 2019 container with IIS Web Server in two containers
(Without volume created)
> docker run --detach -it --name sql2019 --hostname sql2019

(With volume created, assuming C:\volsql directory exists)
> docker run --detach -it --name sql2019 --hostname sql2019 --volume c:\volsql:c:\volsql sql2019

*When creating the database, remember to put the files in path c:\volsql

*Check IP where the container is running with command*
> docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' *container_id*