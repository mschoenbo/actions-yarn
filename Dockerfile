FROM node:lts-alpine

RUN enable corepack && yarn set version stable
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
