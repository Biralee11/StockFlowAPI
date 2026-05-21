FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 8080

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["StockFlowAPI/StockFlowAPI.csproj", "StockFlowAPI/"]
RUN dotnet restore "StockFlowAPI/StockFlowAPI.csproj"
COPY . .
WORKDIR "/src/StockFlowAPI"
RUN dotnet publish -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "StockFlowAPI.dll"]