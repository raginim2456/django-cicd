FROM python:3.11

WORKDIR /data

COPY . .

# Install Django 3.2 (compatible with Python 3.11)
RUN pip install django==3.2

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
