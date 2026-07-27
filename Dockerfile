FROM python:3.13-slim

LABEL org.opencontainers.image.title="py-lorem"
LABEL org.opencontainers.image.description="Simple py-lorem image built with Buildkite"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY loremipsum/ ./loremipsum/

CMD ["python", "-c", "import loremipsum; print(loremipsum.paragraph(max_char=100))"]