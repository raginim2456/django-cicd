FROM python:3

# Set working directory
WORKDIR /data

# Install system dependencies (distutils, gcc, etc.)
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
RUN pip install django==3.2

# Copy project files
COPY . .

# Run migrations (Better: do this during container start, not build)
# Comment out migrate here. It should NOT be inside build step.
# RUN python manage.py migrate

# Expose port
EXPOSE 8000

# Default command to run when container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
