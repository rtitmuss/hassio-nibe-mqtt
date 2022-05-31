#!/usr/bin/with-contenv bashio

if [ ! -f "/config/nibe-mqtt/config.yaml" ]; then
  mkdir -p /config/nibe-mqtt/
  cp /home/config_example.yaml /config/nibe-mqtt/config.yaml
fi

/usr/bin/nibe-mqtt -c /config/nibe-mqtt/config.yaml

