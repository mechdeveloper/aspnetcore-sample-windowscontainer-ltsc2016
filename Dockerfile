# first stage : use sdk image to build
FROM ashishbagheldocker/windows/baseimages/dotnet:sdk-5.0-servercore-ltsc2016 AS build-env
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# copy and publish app and libraries
COPY . ./
RUN dotnet publish -c Release -o out --no-restore

# final stage/image : use runtime image
FROM ashishbagheldocker/windows/baseimages/aspnetcore:runtime-5.0.0-servercore-ltsc2016
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "myWebApp.dll"]
