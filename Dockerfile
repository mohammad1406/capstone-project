# Use the official Python image as the base
FROM python:3.9-slim


- name: Build Docker image
  run: docker build -t mohammad1406/capstone-project:latest -f app/Dockerfile .

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to install dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose the port that the Flask app runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
