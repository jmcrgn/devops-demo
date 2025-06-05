# Use a lightweight base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy your app files into the container
COPY app/ .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 80
EXPOSE 80

# Run the app
CMD ["python", "app.py"]
