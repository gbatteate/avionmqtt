ARG BUILD_FROM
#ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip bluez

# Create a virtualenv and install avionmqtt inside it (PEP 668-safe)
RUN python3 -m venv /opt/venv \
  && /opt/venv/bin/pip install --no-cache-dir --upgrade pip \
  && /opt/venv/bin/pip install --no-cache-dir avionmqtt

COPY run.sh /run.sh
RUN chmod +x /run.sh && sed -i 's/\r$//' /run.sh
#RUN chmod +x /run.sh

CMD ["/run.sh"]

