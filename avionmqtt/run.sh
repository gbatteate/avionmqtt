#!/bin/sh
set -e

# Optional: allow override via env var; default to INFO
LOG_LEVEL="${LOG_LEVEL:-INFO}"

SETTINGS="/config/avionmqtt/settings.yaml"

if [ ! -f "$SETTINGS" ]; then
  echo "ERROR: Missing $SETTINGS"
  exit 1
fi

echo "Starting avionmqtt (log=${LOG_LEVEL}) using ${SETTINGS}"
exec /opt/venv/bin/avionmqtt -s "$SETTINGS" --log="${LOG_LEVEL}"
