FROM python:3.6-stretch

USER anonymous
WORKDIR /home/anonymous

ADD requirements.txt ./

RUN pip install -r requirements.txt --no-cache

ADD examples ./
ADD conf ./

ENTRYPOINT [ "python3" ]
