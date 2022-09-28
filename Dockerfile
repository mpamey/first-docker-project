FROM python:3.10-slim

# fill in the rest here
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["app.py"]