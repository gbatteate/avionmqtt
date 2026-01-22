#!/bin/sh
set -e

LOG_LEVEL="${LOG_LEVEL:-INFO}"
SETTINGS="/config/avionmqtt/settings.yaml"

if [ ! -f "$SETTINGS" ]; then
  echo "ERROR: Missing $SETTINGS"
  exit 1
fi

echo "Starting avionmqtt (log=${LOG_LEVEL})"
exec /opt/venv/bin/avionmqtt -s "$SETTINGS" --log="${LOG_LEVEL}"
