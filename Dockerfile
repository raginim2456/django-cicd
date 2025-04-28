FROM python:3

# Set working directory
WORKDIR /data

# Install system tools
RUN apt-get update && apt-get install -y python3-distutils

# Copy project files
COPY . .

# Install Django inside the container
RUN pip install django==3.2

# Expose port
EXPOSE 8000

# Start Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

