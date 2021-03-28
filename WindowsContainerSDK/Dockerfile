FROM mcr.microsoft.com/windows/servercore:ltsc2016

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
Invoke-WebRequest 'https://dot.net/v1/dotnet-install.ps1' -Proxy $env:HTTP_PROXY -OutFile 'dotnet-install.ps1'; \
./dotnet-install.ps1 -Channel 5.0  -ProxyAddress $env:HTTP_PROXY; \
$newPath = ('{0};{1}' -f 'C:\\Users\\ContainerAdministrator\\AppData\\Local\\Microsoft\\dotnet', $env:PATH); \
setx /M PATH "$newPath";

CMD ["dotnet"]
