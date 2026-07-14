# ---------- Build-Stage: MkDocs baut alle Mandanten x Sprachen ----------
FROM python:3.12-alpine AS build

WORKDIR /docs
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Jeder Mandant wird in ein eigenes Unterverzeichnis unter /site gebaut.
# Sprachen (de/en) erzeugt mkdocs-static-i18n innerhalb jedes Builds selbst.
RUN mkdocs build --strict -f mkdocs.verifleet.yml -d /site/verifleet \
 && mkdocs build --strict -f mkdocs.fleethub.yml  -d /site/fleethub \
 && mkdocs build --strict -f mkdocs.bamaka.yml    -d /site/bamaka

# ---------- Runtime-Stage: schlanker nginx, nur statische Dateien ----------
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /site /usr/share/nginx/html

EXPOSE 80
