# StockFlowAPI

A production-ready RESTful API built with C# and .NET 8, designed to manage products and orders for a retail or distribution business.

## Tech Stack
- C# / .NET 8
- ASP.NET Core Web API
- Entity Framework Core
- PostgreSQL
- Docker & Docker Compose
- Swagger / OpenAPI

## Features
- Full CRUD operations for Products and Orders
- Orders linked to Products with full product details returned
- Automatic order date stamping
- PostgreSQL database with Entity Framework Core migrations
- Fully containerised with Docker
- Swagger UI for API documentation and testing

## Running Locally with Docker

Make sure Docker Desktop is running, then:

```bash
docker-compose up --build
```

API will be available at: http://localhost:8080/swagger

## Endpoints

### Products
- GET /api/Products - Get all products
- GET /api/Products/{id} - Get product by ID
- POST /api/Products - Add a new product
- PUT /api/Products/{id} - Update a product
- DELETE /api/Products/{id} - Delete a product

### Orders
- GET /api/Orders - Get all orders with product details
- GET /api/Orders/{id} - Get order by ID
- POST /api/Orders - Create a new order
- PUT /api/Orders/{id} - Update an order
- DELETE /api/Orders/{id} - Delete an order