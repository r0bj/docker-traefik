FROM traefik:v1.7.4-alpine

RUN apk add --no-cache libcap && setcap 'cap_net_bind_service=+ep' $(which traefik)
