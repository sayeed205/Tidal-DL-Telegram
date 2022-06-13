FROM ubuntu:20.04

RUN apt-get update -qq && \
    DEBIAN_FRONTEND="noninteractive" apt-get -qq install -y python3 python3-pip

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]