FROM traefik:v1.7.5-alpine

RUN apk add --no-cache libcap && setcap 'cap_net_bind_service=+ep' $(which traefik)
