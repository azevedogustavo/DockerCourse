# Docker file example

FROM Ubuntu

RUN apt-get update && apt install -y python

RUN pip install flask flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
