ARG VERSION=latest

FROM metabase/metabase:$VERSION

COPY deploio-root.pem /app/certs/deploio-root.pem
