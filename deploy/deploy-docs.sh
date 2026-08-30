#!/bin/sh
# Forced-Command-Ziel für den Doku-Deploy aus GitHub Actions.
# Liegt auf dem Prod-Server unter /root/deploy-docs.sh und ist in
# ~/.ssh/authorized_keys als erzwungenes Kommando hinterlegt:
#
#   command="/root/deploy-docs.sh",no-port-forwarding,no-agent-forwarding,no-pty,no-X11-forwarding ssh-ed25519 AAAA... docs-deploy
#
# Egal welches Kommando der CI-Job sendet — nur dieses Skript läuft. Kein
# Shell-Zugang, kein Zugriff auf backend/mysql. Der Doku-Deploy kann NUR den
# docs-Service neu ziehen und starten.
set -eu

COMPOSE_DIR=/root/server_hosting_stack
LOG=/var/log/deploy-docs.log

# Der vom CI gesendete Commit-SHA (informativ, fürs Log).
REQ="${SSH_ORIGINAL_COMMAND:-manual}"

echo "$(date -Is) deploy-docs start: ${REQ}" >> "$LOG"

cd "$COMPOSE_DIR"
docker compose pull docs        >> "$LOG" 2>&1
docker compose up -d docs       >> "$LOG" 2>&1

# Kurzer Health-Check gegen den frisch gestarteten Container.
sleep 2
if docker compose exec -T docs wget -q -O /dev/null http://127.0.0.1/_health; then
    echo "$(date -Is) deploy-docs ok" >> "$LOG"
    echo "docs deployed"
else
    echo "$(date -Is) deploy-docs HEALTHCHECK FAILED" >> "$LOG"
    echo "docs healthcheck failed" >&2
    exit 1
fi

# Alte, ungenutzte Images aufräumen (behält das laufende).
docker image prune -f >> "$LOG" 2>&1 || true
