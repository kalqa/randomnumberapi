FROM python:3.6.5-alpine3.7

ENV PYTHONUNBUFFERED 1

COPY ./startup.sh ./startup.sh

RUN apk add --update git nano gcc musl-dev openrc \
    && rm -f /var/cache/apk/* \
    && pip install -U pip \
    && pip install flask \
    && pip install requests \
    && pip install flask-restful \
    && pip install gevent \
    && dos2unix startup.sh

EXPOSE 8080
CMD ["/startup.sh"]
