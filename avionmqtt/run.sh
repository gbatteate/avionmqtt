#!/bin/sh
set -e

if [ ! -f /config/avionmqtt/settings.yaml ]; then
  echo "ERROR: /config/avionmqtt/settings.yaml not found"
  exit 1
fi

echo "Starting avionmqtt..."
avionmqtt -s /config/avionmqtt/settings.yaml --log=INFO
