FROM node:lts-alpine

RUN apk add --no-cache git python2 build-base
RUN enable corepack && yarn set version stable
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
