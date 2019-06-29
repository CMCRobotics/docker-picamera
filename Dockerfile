FROM resin/raspberry-pi-python:3

RUN READTHEDOCS=True pip install picamera

COPY web_streaming.py /web_streaming.py

ENV RESOLUTION=800x480 FRAMERATE=12

ENTRYPOINT ["/usr/local/bin/python", "/web_streaming.py"]
