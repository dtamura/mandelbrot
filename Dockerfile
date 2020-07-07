FROM python:2
RUN apt-get -y update  \
    && apt-get install -y git python-numpy python-matplotlib \
    # && apt-get clean \
    # && rm -rf /var/lib/apt/lists/* \
    && git clone \
    https://github.com/GoogleCloudPlatform/lb-app-capacity-tutorial-python.git \
    && /usr/local/bin/python -m pip install --upgrade pip \
    && pip install matplotlib numpy

EXPOSE 80
WORKDIR /lb-app-capacity-tutorial-python
ENTRYPOINT [ "python", "webserver.py"]
