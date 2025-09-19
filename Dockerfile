# Use lightweight Python image
FROM python:3.9-slim

WORKDIR /app
COPY app/ /app/

CMD ["python", "app.py"]
