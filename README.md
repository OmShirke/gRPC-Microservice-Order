# gRPC-Microservice-Order
Overview<br>
The gRPC-Microservice-Order is a standalone microservice designed to handle order-related operations in a distributed system. It is built using Go (Golang) with gRPC for communication, adhering to modern microservice principles for scalability and performance.

Features
1. Implements CRUD operations for managing orders.
2. Uses gRPC for efficient inter-service communication.
3. Designed with modularity and scalability in mind.
4. Includes PostgreSQL integration for persistent storage.

Project Structure<br>
cmd/order: Contains the main entry point for the microservice.<br>
pb: Compiled protobuf files used for gRPC communication.<br>
repo.go: Repository layer for interacting with the database.<br>
server.go: gRPC server implementation.<br>
service.go: Business logic layer.<br>
client.go: gRPC client for communication with other microservices.<br>
app.dockerfile: Dockerfile to build and deploy the microservice.<br>
db.dockerfile: Dockerfile to set up the PostgreSQL database.<br>
up.sql: SQL script for database initialization and schema setup.<br>

# Installation and Setup

Prerequisites
Go (version 1.20+ recommended)
Docker and Docker Compose
Protobuf Compiler (for .proto file generation)

<h2>Clone this repo:</h2>
git clone https://github.com/OmShirke/gRPC-Microservice-Order.git
cd gRPC-Microservice-Order

<h2>Build the Docker images:</h2>
docker build -t grpc-order-service -f app.dockerfile .
docker build -t postgres-db -f db.dockerfile .

<h2>Start the services:</h2>
docker-compose up

<h2>Generate protobuf files if needed:</h2>
protoc --go_out=. --go-grpc_out=. order.proto
Access the gRPC server at localhost:<port> (replace <port> with your server's port).
