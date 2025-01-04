# gRPC-Microservice-Order

<h2>Overview</h2>
The gRPC-Microservice-Order is a standalone microservice designed to handle order-related operations in a distributed system. It is built using Go (Golang) with gRPC for communication, adhering to modern microservice principles for scalability and performance.

<h2>Features</h2>
1. Implements CRUD operations for managing orders.<br>
2. Uses gRPC for efficient inter-service communication.<br>
3. Designed with modularity and scalability in mind.<br>
4. Includes PostgreSQL integration for persistent storage.<br>

# Project Structure
<code>cmd/order</code>: Contains the main entry point for the microservice.<br>
<code>pb</code>: Compiled protobuf files used for gRPC communication.<br>
<code>repo.go</code>: Repository layer for interacting with the database.<br>
<code>server.go</code>: gRPC server implementation.<br>
<code>service.go</code>: Business logic layer.<br>
<code>client.go</code>: gRPC client for communication with other microservices.<br>
<code>app.dockerfile</code>: Dockerfile to build and deploy the microservice.<br>
<code>db.dockerfile</code>: Dockerfile to set up the PostgreSQL database.<br>
<code>up.sql</code>: SQL script for database initialization and schema setup.<br>

# Installation and Setup

<h2>Prerequisites</h2>
Go (version 1.20+ recommended)<br>
Docker and Docker Compose<br>
Protobuf Compiler (for .proto file generation)<br>

<h2>Clone this repo:</h2>
<code>git clone https://github.com/OmShirke/gRPC-Microservice-Order.git</code><br>
<code>cd gRPC-Microservice-Order</code><br>

<h2>Build the Docker images:</h2>
<code>docker build -t grpc-order-service -f app.dockerfile .</code><br>
<code>docker build -t postgres-db -f db.dockerfile .</code><br>

<h2>Start the services:</h2>
<code>docker-compose up</code><br>

<h2>Generate protobuf files if needed:</h2>
<code>protoc --go_out=. --go-grpc_out=. order.proto</code><br>

Access the gRPC server at localhost:<port> (replace <port> with your server's port).<br>

