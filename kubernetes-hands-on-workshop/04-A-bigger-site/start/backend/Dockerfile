FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine AS build

WORKDIR /src

COPY backend.csproj .
RUN dotnet restore backend.csproj

COPY . .
RUN dotnet build backend.csproj -c Release
RUN dotnet publish backend.csproj -c Release -o /app

# TODO: add the Docker commands to do these build steps:

# set the current directory
# copy the manifest file: backend.csproj
# from a shell, run `dotnet restore`
# copy the content into place
# from a shell, run `dotnet build -c Release`
# from a shell, run `dotnet publish -c Release -o /app`


FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine

ENV ASPNETCORE_URLS http://+:5003
EXPOSE 5003

WORKDIR /app
COPY --from=build /app .

CMD ["dotnet", "backend.dll"]

# TODO: add the Docker commands to do these image build and container run steps:

# set the current directory
# copy the content from the app folder on the build stage above

# as the container starts:
# `dotnet backend.dll`
