# Base image olarak Python kullanalım
FROM python:3.12

# Uygulama kodunu /app dizinine kopyalayalım
COPY . /app

# Gerekli bağımlılıkları yükleyelim
RUN pip install -r /app/requirements.txt

# Uygulamayı çalıştıralım
CMD ["python", "/app/app.py"]
