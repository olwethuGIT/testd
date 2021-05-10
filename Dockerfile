FROM ubuntu

LABEL maintainer="Olwethu Mbada" name="python_app" version="1.0"

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install flask

COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
