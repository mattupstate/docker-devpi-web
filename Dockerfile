FROM mattupstate/devpi

RUN pip install devpi-web

CMD devpi-server --host 0.0.0.0 --port 3141 --restrict-modify root --serverdir /data
