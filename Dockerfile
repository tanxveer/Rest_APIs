FROM python:3.11.3
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bin", "0.0.0.0:80", "app:create_app()"]