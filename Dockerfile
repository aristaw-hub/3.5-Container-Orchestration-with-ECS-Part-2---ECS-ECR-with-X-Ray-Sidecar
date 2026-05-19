# Using the latest Python base image
FROM python:latest

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose application port
EXPOSE 8080

# Start the Flask application
ENTRYPOINT ["python"]
CMD ["app.py"]
