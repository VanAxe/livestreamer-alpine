FROM python:2-alpine

MAINTAINER Alexis Vanier <alexis@amonoid.io>
RUN mkdir -p /srv/output && pip install livestreamer

COPY entrypoint.sh /root/entrypoint.sh

ENTRYPOINT ["/bin/ash", "-c", "/root/entrypoint.sh ${*}", "--"]
