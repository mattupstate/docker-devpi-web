FROM python:2.7

RUN pip install devpi-web
RUN mkdir /data

VOLUME /data
EXPOSE 3141

CMD devpi-server --host 0.0.0.0 --port 3141 --restrict-modify root --serverdir /data
