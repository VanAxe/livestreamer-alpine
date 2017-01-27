#!/bin/ash

cat << EOF > ~/.livestreamerrc
no-version-check
output=${LIVESTREAMER_OUTPUT_FILE:-/srv/output/output.mp4}
twitch-oauth-token=${TWITCH_OAUTH_TOKEN}
default-stream=${LIVESTREAMER_DEFAULT_SOURCE:-source}
EOF

if [ -z ${TWITCH_OAUTH_TOKEN} ]; then
  echo 'no Twitch oAuth token provided - exiting'
  exit 1
fi

livestreamer --yes-run-as-root ${*}
