FROM python:3.13-slim

WORKDIR /app
COPY . .

CMD ["python", "-c", "import loremipsum; print(loremipsum.paragraph(max_char=100))"]