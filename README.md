Write Django Project (manage.py, settings.py, etc.)

Create a Dockerfile

Use python:3.11 base image

Install Django

Copy project files

Expose port 8000

Run Django server

Build Docker Image
docker build -t my-django-app .
Run Docker Container

docker run -p 8000:8000 my-django-app
Push Code to GitHub Repository

Branch: main or develop

Create Jenkins Pipeline

Pull code from GitHub

Build Docker image

Run container

Run database migrations

Access Django App

URL: http://43.205.98.195:8000



https://github.com/raginim2456/django-cicd/blob/main/staticfiles/TodoApp.png
