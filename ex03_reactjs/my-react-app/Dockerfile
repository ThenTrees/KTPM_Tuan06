# Sử dụng node:18-alpine làm base image
FROM node:18-alpine AS build

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và package-lock.json vào container
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Build ứng dụng
RUN npm run build

# --- Production Stage ---
FROM node:18-alpine AS run

# Thiết lập thư mục làm việc
WORKDIR /app

# Cài đặt serve để chạy React
RUN npm install -g serve

# Sao chép thư mục build từ bước trước vào container
COPY --from=build /app/build ./build

# Expose cổng 3000
EXPOSE 3000

# Chạy ứng dụng React
CMD ["serve", "-s", "build", "-l", "3000"]
