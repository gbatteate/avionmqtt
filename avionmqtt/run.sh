#!/usr/bin/env sh
set -e

# bashio is present in hassio-addons/base; source it explicitly
. /usr/lib/bashio/bashio.sh

LOG_LEVEL="$(bashio::config 'log_level')"
SETTINGS="/config/avionmqtt/settings.yaml"

if [ ! -f "$SETTINGS" ]; then
  bashio::log.error "Missing $SETTINGS"
  exit 1
fi

bashio::log.info "Starting avionmqtt (log=${LOG_LEVEL})"
exec /opt/venv/bin/avionmqtt -s "$SETTINGS" --log="${LOG_LEVEL}"
