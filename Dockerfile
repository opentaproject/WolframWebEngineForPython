FROM opentaproject/openta-wolfram-base:v1470

USER root

WORKDIR /srv/openta/wolframengine

RUN apt-get update -y && \
  apt-get install -y python3 python3-pip && \
  python3 -m pip install wolframwebengine

COPY . /srv/openta
#RUN pip3 install /tmp/build && \
#  rm -r /tmp/build && \
#  chown -R wolframengine /srv
#
#USER wolframengine
EXPOSE 8000
#ENTRYPOINT ["/usr/bin/python3", "-m", "wolframwebengine", "--domain", "0.0.0.0"]
#CMD ["/srv"]
