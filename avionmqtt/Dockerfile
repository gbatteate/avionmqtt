ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
  python3 py3-pip py3-virtualenv \
  bluez dbus tzdata ca-certificates

RUN python3 -m venv /opt/venv \
  && /opt/venv/bin/pip install --no-cache-dir --upgrade pip \
  && /opt/venv/bin/pip install --no-cache-dir avionmqtt

COPY run.sh /run.sh
RUN chmod +x /run.sh && sed -i 's/\r$//' /run.sh

CMD ["/run.sh"]
