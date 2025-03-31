-- Tạo database mới khi container chạy lần đầu tiên
CREATE DATABASE mydatabase;

-- Tạo user và cấp quyền cho database
CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;
