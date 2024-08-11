FROM python:3.12

WORKDIR /app

COPY app/requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY app/app.py /app

CMD ["python3", "app.py"]

EXPOSE 5000

