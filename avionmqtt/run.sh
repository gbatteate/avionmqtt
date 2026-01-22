#!/bin/sh
set -e

LOG_LEVEL=$(bashio::config 'log_level')

if [ ! -f /config/avionmqtt/settings.yaml ]; then
  echo "ERROR: Missing /config/avionmqtt/settings.yaml"
  exit 1
fi

echo "Starting avionmqtt (log=${LOG_LEVEL})"
exec /opt/venv/bin/avionmqtt -s /config/avionmqtt/settings.yaml --log=${LOG_LEVEL}

