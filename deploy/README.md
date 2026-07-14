# Doku-Deployment — Server-Setup

Die Dokumentation läuft als eigener Container `docs` im bestehenden Compose-Stack
`/root/server_hosting_stack` auf dem Prod-Server. Sie ist **nicht** von außen
erreichbar — nur der `backend`-Container (AdminPanel) erreicht sie über das
interne Docker-Netz und reicht Requests nach Session-Prüfung unter `/hilfe` durch.

Deploy-Weg: GitHub Actions baut bei Push auf `main` das Image, pusht es nach
`ghcr.io/verifleet/verifleet-docs` und stößt per SSH den Neustart an. Rollback =
Image-Tag zurücksetzen.

---

## Einmaliges Setup auf dem Server

### 1. Compose um den `docs`-Service erweitern

In `/root/server_hosting_stack/docker-compose.yml`:

```yaml
  docs:
    image: ghcr.io/verifleet/verifleet-docs:${DOCS_IMAGE_TAG:-main}
    networks:
      - backend          # NUR internes Netz — keine Ports, kein NPM
    restart: unless-stopped
```

Kein `ports:`-Block. Der Container ist damit ausschließlich für andere Container
im `backend`-Netz erreichbar, adressierbar unter dem Hostnamen `docs`.

### 2. GHCR-Pull-Zugriff (Image ist privat!)

Das Image ist **privat** (es enthält später die Screenshots aus dem System).
Der Server braucht dauerhaften Read-Zugriff. Einmalig mit einem GitHub-PAT
(nur `read:packages`):

```bash
echo "<PAT_READ_PACKAGES>" | docker login ghcr.io -u <github-user> --password-stdin
```

Das legt `~/.docker/config.json` an; `docker compose pull docs` funktioniert
danach dauerhaft.

### 3. Deploy-Skript ablegen

```bash
cp deploy/deploy-docs.sh /root/deploy-docs.sh
chmod +x /root/deploy-docs.sh
```

### 4. Deploy-SSH-Key mit Forced Command

Auf einem lokalen Rechner einen dedizierten Key erzeugen:

```bash
ssh-keygen -t ed25519 -f docs-deploy -C docs-deploy -N ""
```

Den **public** Key auf dem Server in `~/.ssh/authorized_keys` eintragen, mit
erzwungenem Kommando (eine Zeile):

```
command="/root/deploy-docs.sh",no-port-forwarding,no-agent-forwarding,no-pty,no-X11-forwarding ssh-ed25519 AAAA...docs-deploy
```

Dieser Key kann ausschließlich `deploy-docs.sh` ausführen — kein Shell-Zugang,
kein Zugriff auf `backend` oder `mysql`.

### 5. GitHub-Secrets im Repo `VeriFleet/vf-documentation`

| Secret | Wert |
|---|---|
| `DOCS_DEPLOY_SSH_KEY` | Inhalt der **privaten** Key-Datei `docs-deploy` |
| `DOCS_DEPLOY_HOST` | `49.13.45.139` |
| `DOCS_DEPLOY_USER` | `root` |
| `DOCS_DEPLOY_KNOWN_HOSTS` | Ausgabe von `ssh-keyscan -H 49.13.45.139` |

### 6. Erster Start

```bash
cd /root/server_hosting_stack
docker compose pull docs
docker compose up -d docs
docker compose exec docs wget -qO- http://localhost/_health   # -> ok
```

---

## Rollback

Auf einen bekannten guten Commit-SHA zurück:

```bash
cd /root/server_hosting_stack
echo "DOCS_IMAGE_TAG=<sha>" >> .env      # oder vorhandenen Eintrag ersetzen
docker compose up -d docs
```

Ohne `.env`-Eintrag zieht der Stack `:main` (den jeweils neuesten Stand).

---

## Netz-/Erreichbarkeits-Check

```bash
# aus dem backend-Container muss docs erreichbar sein:
docker compose exec backend wget -qO- http://docs/verifleet/ | head

# von außen darf docs NICHT erreichbar sein (kein Port gemappt):
curl -s -o /dev/null -w '%{http_code}\n' http://49.13.45.139:80/verifleet/   # -> nicht die Doku
```
