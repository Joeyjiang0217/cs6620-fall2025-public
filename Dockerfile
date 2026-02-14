# 1) Use an appropriate Python base image
FROM python:3.11-slim

# 2) Set working directory inside the container
WORKDIR /app

# (optional but common) avoid writing .pyc, and ensure logs show immediately
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3) Install dependencies from requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4) Copy the application files
COPY . .

# 5) Expose the Flask port
EXPOSE 5000

# 6) Run the Flask application
CMD ["python", "app.py"]
