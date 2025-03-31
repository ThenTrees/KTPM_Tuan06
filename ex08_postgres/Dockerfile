# Sử dụng image PostgreSQL 15 làm base
FROM postgres:15

# Thiết lập biến môi trường mặc định (có thể override khi chạy container)
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=mydatabase

# Copy file SQL vào thư mục khởi tạo của PostgreSQL
COPY init-db.sql /docker-entrypoint-initdb.d/

# Mở cổng mặc định của PostgreSQL
EXPOSE 5432
