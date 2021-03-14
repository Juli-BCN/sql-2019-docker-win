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

> ddocker image build --tag sqlbuilder .

> docker images



## Run the new SQL Express 2019 container
(Without volume created)
> docker run --detach -it --name sqlbuilder --hostname sqlbuilder

(With volume created, assuming C:\volsql directory exists)
> docker run --detach -it --name sqlbuilder --hostname sqlbuilder --volume c:\volsql:c:\volsql sqlbuilder