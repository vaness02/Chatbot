# Gunakan image dasar yang mendukung Python dan GPU jika diperlukan
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy source code
COPY . /app
WORKDIR /app

# Copy model and documents
COPY modelakhir /app/model
COPY squad_bert /app/documents

# Run the application
CMD ["python", "app1.py"]
