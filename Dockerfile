FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN python -m venv --copies /opt/venv
RUN . /opt/venv/bin/activate && pip install -r requirements.txt
COPY . .
