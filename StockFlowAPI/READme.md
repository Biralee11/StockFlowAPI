# StockFlowAPI

A production-ready RESTful API built with C# and .NET 8, designed to manage products and orders for a retail or distribution business. Features JWT authentication, PostgreSQL database, and full Docker containerisation.

## Tech Stack
- C# / .NET 8
- ASP.NET Core Web API
- Entity Framework Core
- PostgreSQL (Neon in production)
- Docker and Docker Compose
- JWT Authentication
- BCrypt password hashing
- Swagger / OpenAPI

## Features
- JWT authentication with register and login endpoints
- BCrypt password hashing
- Protected Products and Orders endpoints
- Full CRUD operations for Products and Orders
- DTOs for request validation
- Orders linked to Products with full product details returned
- Automatic order date stamping
- Auto database migrations on startup
- PostgreSQL with persistent Docker volumes
- Fully containerised with Docker
- Deployed live on Render

## Live Demo
API Base URL: https://stockflowapi-5ir8.onrender.com
API Documentation: https://stockflowapi-5ir8.onrender.com/swagger

Test with Postman:
- Register: POST /api/Auth/register
- Login: POST /api/Auth/login
- Products: GET/POST/PUT/DELETE /api/Products (requires Bearer token)
- Orders: GET/POST/PUT/DELETE /api/Orders (requires Bearer token)

## Running Locally with Docker
Make sure Docker Desktop is running, then from the root folder:

```bash
docker-compose up --build
```

API will be available at: http://localhost:8080

## Environment Variables
Create a .env file in the root folder:
JWT_SECRET_KEY=your-secret-key
JWT_ISSUER=StockFlowAPI
JWT_AUDIENCE=StockFlowAPIUsers
DB_CONNECTION=Host=db;Port=5432;Database=stockflow_db;Username=postgres;Password=postgres

## Endpoints

### Auth
- POST /api/Auth/register - Register a new user
- POST /api/Auth/login - Login and receive JWT token

### Products (requires Bearer token)
- GET /api/Products - Get all products
- GET /api/Products/{id} - Get product by ID
- POST /api/Products - Add a new product
- PUT /api/Products/{id} - Update a product
- DELETE /api/Products/{id} - Delete a product

### Orders (requires Bearer token)
- GET /api/Orders - Get all orders with product details
- GET /api/Orders/{id} - Get order by ID
- POST /api/Orders - Create a new order
- PUT /api/Orders/{id} - Update an order
- DELETE /api/Orders/{id} - Delete an order