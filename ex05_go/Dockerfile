# Stage 1: Build
FROM golang:1.21 AS build

WORKDIR /app

# Copy source code vào container
COPY . .

# Biên dịch ứng dụng thành file nhị phân
RUN go mod init myapp && go mod tidy
RUN go build -o myapp

# Stage 2: Run
FROM alpine:latest

WORKDIR /root/

# Copy file nhị phân từ stage build sang
COPY --from=build /app/myapp .

# Expose cổng 8080
EXPOSE 8080

# Chạy ứng dụng
CMD ["./myapp"]
