FROM mcr.microsoft.com/windows/servercore:ltsc2016

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ENV ASPNETCORE_URLS http://+:80

RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
Invoke-WebRequest 'https://dot.net/v1/dotnet-install.ps1' -OutFile 'dotnet-install.ps1'; \
./dotnet-install.ps1 .\dotnet-install.ps1 -Runtime aspnetcore -Version 5.0.0 \
$newPath = ('{0};{1}' -f 'C:\\Users\\ContainerAdministrator\\AppData\\Local\\Microsoft\\dotnet', $env:PATH); \
setx /M PATH "$newPath";

CMD ["dotnet"]
