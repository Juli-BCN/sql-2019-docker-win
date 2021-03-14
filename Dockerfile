# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2019
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

ADD source c:\source

RUN C:\source\SQLEXPRADV_x64_ENU\SETUP.exe /Q /ACTION=INSTALL /FEATURES=SQLENGINE /INSTANCENAME=MSSQLSERVER /SECURITYMODE=SQL /SAPWD="Str0ngP@ssword!" /SQLSVCACCOUNT="NT AUTHORITY\System" /AGTSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\Administrators" /IACCEPTSQLSERVERLICENSETERMS=1 /TCPENABLED=1 /UPDATEENABLED=False

RUN powershell -Command " `
 Remove-Item C:\source -Recurse `
"

ENTRYPOINT "ping -t localhost > NULL"