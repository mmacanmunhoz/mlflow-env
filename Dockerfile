FROM python:3.11-slim

RUN pip install --no-cache-dir mlflow

WORKDIR /app

CMD ["sh", "-c", "python -m mlflow server \
--host 0.0.0.0 \
--port ${PORT} \
--workers 1 \
--allowed-hosts mlflow-env.onrender.com \
--backend-store-uri sqlite:///mlflow.db \
--default-artifact-root ./mlartifacts"]