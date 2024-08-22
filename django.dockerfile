FROM python:3.11-alpine

COPY ./cicd /app

WORKDIR /app

RUN apk add --no-cache gcc musl-dev linux-headers

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD [ "gunicorn", "bind", "0.0.0.0:8000", "cicd.wsgi:application" ]
