FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base

WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
WORKDIR /src
COPY /src/MultiStage.csproj .
RUN dotnet restore MultiStage.csproj
COPY . .

RUN dotnet build MultiStage.csproj -c Release
RUN dotnet publish MultiStage.csproj -c Release -o /app
RUN dotnet --version

WORKDIR /app

ENV ASPNETCORE_URLS http://+:5000
EXPOSE 5000

CMD ["dotnet", "MultiStage.dll"]
