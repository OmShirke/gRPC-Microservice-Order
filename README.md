# gRPC-Microservice-Order
Overview
The gRPC-Microservice-Order is a standalone microservice designed to handle order-related operations in a distributed system. It is built using Go (Golang) with gRPC for communication, adhering to modern microservice principles for scalability and performance.

Features
1. Implements CRUD operations for managing orders.
2. Uses gRPC for efficient inter-service communication.
3. Designed with modularity and scalability in mind.
4. Includes PostgreSQL integration for persistent storage.

# Installation and Setup

Prerequisites
Go (version 1.20+ recommended)
Docker and Docker Compose
Protobuf Compiler (for .proto file generation)


Steps to Run Locally

<h3>Clone this repo</h3>

git clone https://github.com/OmShirke/gRPC-Microservice-Order.git
cd gRPC-Microservice-Order


Build the Docker images:

docker build -t grpc-order-service -f app.dockerfile .
docker build -t postgres-db -f db.dockerfile .


Start the services:

docker-compose up


Generate protobuf files if needed:

protoc --go_out=. --go-grpc_out=. order.proto
Access the gRPC server at localhost:<port> (replace <port> with your server's port).
