FROM gcr.io/google-containers/ubuntu-slim:0.14
RUN apt-get update && \
  apt-get install -y ntp python3 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /usr/local/probe && \
  apt-get autoremove -y && \
  apt-get clean -y

COPY ntpd.conf /etc/ntpd.conf
COPY . /usr/local/probe
CMD ["/usr/sbin/ntpd", "-n"]
EXPOSE 123
