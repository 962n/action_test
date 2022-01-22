#FROM golangci/golangci-lint:v1.43-alpine
#
#ENV REVIEWDOG_VERSION=v0.13.0
#
#SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
#
## hadolint ignore=DL3006
#RUN apk --no-cache add git
#
#RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}
#
##COPY entrypoint.sh /entrypoint.sh
#
##ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/bin/ash"]

FROM golang:1.17-alpine

ENV REVIEWDOG_VERSION=v0.13.0

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

# hadolint ignore=DL3006
RUN apk --no-cache add git
RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.43.0


#COPY entrypoint.sh /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/ash"]