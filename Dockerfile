FROM ubuntu:20.04
LABEL maintainer="r.zeus <r.zeusyf@gmail.com>"

RUN apt-get update && apt-get install -y bash curl libglib2.0-0
RUN curl -o /tmp/uam-latest_amd64.deb "https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb" && \
    dpkg -i /tmp/uam-latest_amd64.deb && rm -f /tmp/uam-latest_amd64.deb

COPY bootstrap.sh /opt/

ENTRYPOINT ["/opt/bootstrap.sh"]
