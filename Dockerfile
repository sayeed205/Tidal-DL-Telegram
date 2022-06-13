FROM ubuntu:latest

RUN apt-get update -qq -y && apt-get upgrade -qq -y \
    apt-get -qq install -y python3 python3-pip

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]