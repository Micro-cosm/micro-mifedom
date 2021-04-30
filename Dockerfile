# FROM	kong/kong-gateway
FROM	kong:latest

ARG		REPO
ARG		SERVICE
ARG		TARGET_ALIAS
ENV		REPO=${REPO}
ENV		SERVICE=${SERVICE}
ENV		TARGET_ALIAS=${TARGET_ALIAS}

COPY	./api-config/kong.$SERVICE.$TARGET_ALIAS.yml /usr/local/kong/declarative/kong.yml
COPY	./api-config/kong.conf.default /etc/kong/kong.conf

