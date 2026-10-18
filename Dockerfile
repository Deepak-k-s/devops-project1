FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

RUN adduser --disabled-password --gecos "" --uid 10001 appuser

COPY --chown=10001:10001 app/app.py ./app.py

USER 10001:10001

EXPOSE 8080

CMD ["python", "-B", "app.py"]

