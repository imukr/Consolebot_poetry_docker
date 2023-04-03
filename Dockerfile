FROM python:3.10-alpine

WORKDIR /app

ENV POETRY_VIRTUALENVS_CREATE=false

RUN pip install poetry

COPY ["pyproject.toml", "poetry.lock", "/app/"]

RUN poetry install --no-ansi --no-interaction

COPY . .

CMD ["python", "main.py"]


