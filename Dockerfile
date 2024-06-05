# Stage 1: Build the Go binary
FROM --platform=linux/amd64 golang:1.20.12-bullseye as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the Go Modules files
COPY go.mod  ./
# COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the source code
COPY . .

# Build the Go app
ARG TARGETARCH
RUN CGO_ENABLED=0 GOOS=linux GOARCH=${TARGETARCH} go build -o main .
# Stage 2: Create a lightweight image to run the binary
FROM alpine:latest

# Copy the pre-built binary file from the builder stage
COPY --from=builder /app/main /main

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["/main"]
