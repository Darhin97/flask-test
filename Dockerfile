FROM ubuntu:latest


RUN apt-get update
RUN apt-get install -y python3 python3-pip python3-venv

#create and activate virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip3 install flask

COPY app.py /opt/app.py

CMD FLASK_APP=/opt/app.py flask run --host=0.0.0.0
