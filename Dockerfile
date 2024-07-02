FROM python:3

RUN pip install django==4.2.11

WORKDIR /app

COPY . .

RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
