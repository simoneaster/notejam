FROM python:2.7
RUN apt-get update && apt-get -y install default-libmysqlclient-dev
COPY . /app
WORKDIR /app/notejam/flask
COPY startup.sh .
RUN pip install -r requirements.txt
CMD ["./startup.sh"]
