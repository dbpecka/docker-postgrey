FROM bitnami/minideb:bullseye
#FROM ubuntu:19.10
# [dbp:12/30/2021] migrating to minideb stable

RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
    postgrey postfix-

EXPOSE 10023

CMD ["postgrey", "--inet=0.0.0.0:10023", "--user=postgrey"]

