# Todo API Backend

A clean and well-structured NestJS backend for managing todo items with full CRUD operations, SQLite database persistence, and Swagger documentation.

## Features

- ✅ **Full CRUD Operations**: Create, Read, Update, Delete todos
- 🗄️ **SQLite Database**: Persistent storage with TypeORM integration
- 📚 **Swagger Documentation**: Interactive API documentation at `/api`
- 🔍 **Input Validation**: Comprehensive validation using class-validator
- 🏗️ **Clean Architecture**: Proper separation of concerns with DTOs, entities, services, and mappers
- 🎯 **Type Safety**: Full TypeScript support with proper typing
- 🚀 **Auto-reload**: Development server with hot reload

## Project Structure

```
src/
├── todo/
│   ├── dto/
│   │   ├── create-todo.dto.ts    # Data Transfer Object for creating todos
│   │   └── update-todo.dto.ts    # Data Transfer Object for updating todos
│   ├── entities/
│   │   └── todo.entity.ts        # Todo entity definition with TypeORM decorators
│   ├── mappers/
│   │   └── todo.mapper.ts        # Mapper for converting between DTOs and entities
│   ├── todo.controller.ts        # REST API endpoints
│   ├── todo.service.ts           # Business logic with TypeORM repository
│   └── todo.module.ts            # Module configuration with TypeORM integration
├── app.module.ts                 # Root module with TypeORM and SQLite configuration
└── main.ts                       # Application bootstrap
```

## Database Configuration

The application uses SQLite as the database with TypeORM for ORM functionality:

- **Database Location**: `data/todos.sqlite`
- **Auto Schema Creation**: Enabled with `synchronize: true` (for development only)
- **Entity Management**: Auto-loading entities from the application

## API Endpoints

### Todos

| Method | Endpoint     | Description           |
|--------|--------------|----------------------|
| GET    | `/todos`     | Get all todos        |
| GET    | `/todos/:id` | Get todo by ID       |
| POST   | `/todos`     | Create a new todo    |
| PATCH  | `/todos/:id` | Update todo by ID    |
| DELETE | `/todos/:id` | Delete todo by ID    |

## Todo Model

```typescript
{
  id: number;              // Unique identifier (auto-generated)
  title: string;           // Todo title (required, max 100 chars)
  description?: string;    // Optional description (max 500 chars)
  completed: boolean;      // Completion status (default: false)
  priority: 'low' | 'medium' | 'high'; // Priority level (default: 'medium')
  createdAt: Date;         // Creation timestamp (auto-generated)
  updatedAt: Date;         // Last update timestamp (auto-updated)
}
```

## Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Installation

1. Install dependencies:
   ```bash
   npm install
   ```

2. Start the development server:
   ```bash
   npm run start:dev
   ```

3. The API will be available at:
   - **API Base URL**: http://localhost:3000
   - **Swagger Documentation**: http://localhost:3000/api

### Available Scripts

- `npm run start` - Start the application
- `npm run start:dev` - Start in development mode with hot reload
- `npm run start:debug` - Start in debug mode
- `npm run build` - Build the application
- `npm run test` - Run unit tests
- `npm run test:e2e` - Run end-to-end tests
- `npm run lint` - Run ESLint
- `npm run format` - Format code with Prettier

## Example Usage

### Create a Todo

```bash
curl -X POST http://localhost:3000/todos \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Buy groceries",
    "description": "Buy milk, bread, and eggs",
    "priority": "high"
  }'
```

### Get All Todos

```bash
curl http://localhost:3000/todos
```

### Update a Todo

```bash
curl -X PATCH http://localhost:3000/todos/1 \
  -H "Content-Type: application/json" \
  -d '{
    "completed": true
  }'
```

### Delete a Todo

```bash
curl -X DELETE http://localhost:3000/todos/1
```

## Architecture Highlights

### Database Integration

- **TypeORM**: Object-Relational Mapping for database operations
- **Repository Pattern**: Clean data access through TypeORM repositories
- **SQLite**: Lightweight, file-based database for persistence
- **Migrations**: Ready for database schema migrations (can be enabled)

### Clean Code Principles

- **Single Responsibility**: Each class has a single, well-defined purpose
- **Dependency Injection**: Proper use of NestJS DI container
- **Separation of Concerns**: Clear separation between controllers, services, and data layers
- **Input Validation**: Comprehensive validation at the API boundary
- **Error Handling**: Proper HTTP status codes and error messages

### Design Patterns

- **DTO Pattern**: Data Transfer Objects for API contracts
- **Mapper Pattern**: Clean conversion between different object types
- **Repository Pattern**: Service layer abstracts data access through TypeORM
- **Module Pattern**: Organized code structure with NestJS modules

### Data Validation

- **class-validator**: Decorator-based validation
- **class-transformer**: Automatic type transformation
- **Whitelist**: Only allowed properties are accepted
- **Type Safety**: Full TypeScript support

## Future Enhancements

- 🔐 **Authentication**: Add JWT-based authentication
- 📄 **Pagination**: Add pagination for large todo lists
- 🔍 **Filtering**: Add filtering and sorting capabilities
- 📊 **Logging**: Add structured logging
- 🧪 **Testing**: Add comprehensive unit and integration tests
- 🐳 **Docker**: Add Docker containerization
- 🚀 **Deployment**: Add CI/CD pipeline
- 🗄️ **Database Migrations**: Add TypeORM migrations for production use

## Technologies Used

- **NestJS**: Progressive Node.js framework
- **TypeScript**: Type-safe JavaScript
- **TypeORM**: Object-Relational Mapping
- **SQLite**: Lightweight database
- **Swagger/OpenAPI**: API documentation
- **class-validator**: Validation library
- **class-transformer**: Object transformation
- **Prettier**: Code formatting
- **ESLint**: Code linting
