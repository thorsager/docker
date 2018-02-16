ARG BASE_TAG=latest
FROM docker:${BASE_TAG}
#FROM docker:17.09-dind

RUN set -eux; \
	apk add --no-cache \
		bash \
		git \
		subversion
