FROM python:3.7-slim

WORKDIR /app

ADD . /app

RUN apt-get update && apt-get install -y libpq-dev gcc && pip3 install psycopg2>=2.8.4 && apt-get autoremove -y gcc
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80
EXPOSE 5000

CMD ["python", "hello.py"]