FROM python:3.6-stretch

WORKDIR /opt

ADD requirements.txt ./

RUN pip install -r requirements.txt --no-cache

ADD examples ./
ADD conf ./

ENTRYPOINT [ "python3" ]
