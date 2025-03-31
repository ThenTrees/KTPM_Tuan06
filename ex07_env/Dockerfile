# Sử dụng Python làm base image
FROM python:3.11

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy mã nguồn vào container
COPY app.py .

# Thiết lập biến môi trường mặc định
ENV APP_ENV=development

# Chạy ứng dụng
CMD ["python", "app.py"]
