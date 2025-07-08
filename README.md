# Go Docker Test

A minimal Go web server demonstrating Docker and Docker Compose integration. This project serves as a template for containerizing Go applications and running them with Docker Compose.

## Features
- Simple HTTP server written in Go
- Health check endpoint (`/health`)
- Dockerfile for containerization
- Docker Compose for easy orchestration

## Requirements
- [Go 1.24+](https://golang.org/dl/)
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

### Clone the repository
```bash
git clone  
cd go-docker-test
```

### Build and Run with Docker Compose

Start the service:
```bash
docker-compose up
```

Start in detached mode (background):
```bash
docker-compose up -d
```

Stop the service:
```bash
docker-compose down
```

Rebuild and start:
```bash
docker-compose up --build
```

The server will be available at [http://localhost:8082](http://localhost:8082)

### Manual Build and Run (without Docker)

```bash
go build -o main .
./main
```

The server will be available at [http://localhost:8080](http://localhost:8080)

## Endpoints

- `/` - Returns a greeting with the requested path.
- `/health` - Health check endpoint. Returns `OK` if the server is running.

## Project Structure
```
main.go              # Main Go application
Dockerfile           # Docker build instructions
docker-compose.yml   # Docker Compose configuration
go.mod               # Go module definition
commands.txt         # Common Docker Compose commands
```

## License
This project is provided as-is for demonstration purposes. Add a LICENSE file for production use. 