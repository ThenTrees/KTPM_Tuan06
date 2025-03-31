import os

# Lấy giá trị biến môi trường APP_ENV (mặc định là 'production' nếu không được đặt)
app_env = os.getenv("APP_ENV", "production")

print(f"Application is running in {app_env} mode.")
