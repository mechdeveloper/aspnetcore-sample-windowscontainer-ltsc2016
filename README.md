# Sample aspnetcore app | Windows Containers

## Build your own Custom Windows Container images | dotnet SDK

```PowerShell
# Build
docker build --build-arg HTTP_PROXY=$env:HTTP_PROXY `
  -t ashishbagheldocker/windows/baseimages/dotnet:sdk-5.0-servercore-ltsc2016 .

# Run / Test
docker run ashishbagheldocker/windows/baseimages/dotnet:sdk-5.0-servercore-ltsc2016
```

## Build your own Custom Windows Container images | aspnetcore Runtime

```PowerShell
# Build
docker build --build-arg HTTP_PROXY=$env:HTTP_PROXY `
 -t ashishbagheldocker/windows/baseimages/aspnetcore:runtime-5.0.0-servercore-ltsc2016

# Run / Test
docker run ashishbagheldocker/windows/baseimages/aspnetcore:runtime-5.0.0-servercore-ltsc2016
```

## Build your aspnetcore web application  as a docker image using multi stage `Dockerfile`

```PowerShell
docker build -t aspnetcore-sampleapp:v0.0.1 .
```

## Deploy using `docker-compose.yml`

```PowerShell
docker stack deploy --compose-file docker-compose.yml stack- aspnetcoreapp
```
