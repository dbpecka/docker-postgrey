FROM ubuntu:19.04

RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
    postgrey postfix-

EXPOSE 10023
CMD ["postgrey", "--inet=0.0.0.0:10023", "--user=postgrey"]
