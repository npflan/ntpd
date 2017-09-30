FROM gcr.io/google-containers/ubuntu-slim:0.14
RUN apt-get update && apt-get install -y ntp && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/usr/sbin/ntpd", "-n"]
EXPOSE 123
