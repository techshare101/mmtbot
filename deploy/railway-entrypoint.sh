#!/bin/sh
# Railway mounts a new persistent volume as root. Give the unprivileged
# OpenMausBot runtime ownership before dropping privileges.
set -eu
mkdir -p /data
chown -R maus:maus /data
exec runuser -u maus -- node /app/dist-server/server-launcher.js
