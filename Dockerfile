# Use the official Python image from Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file (if you have one)
COPY requirements.txt .

# Install dependencies (skip this line if you have no requirements)
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app's code
COPY . .

# Set the default command (replace app.py with your Python file)
CMD ["python", "app.py"]