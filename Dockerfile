# FROM python:3.7-slim-stretch

# RUN apt-get update && apt-get install -y git python3-dev gcc \
#     && rm -rf /var/lib/apt/lists/*

# COPY requirements.txt .

# RUN pip install --upgrade -r requirements.txt

# COPY app app/

# RUN python app/server.py

# EXPOSE 8080

# CMD ["python", "app/server.py", "serve"]

# Python version
FROM python:3
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /code
# Install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt
# Copy project
COPY . /code/