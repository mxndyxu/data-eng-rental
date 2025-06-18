# Base image
FROM python:3.11-slim

# Install basic utilities
RUN apt-get update && apt-get install -y build-essential curl && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your project files
COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install apache-airflow

# Environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Default command
CMD ["bash"]
