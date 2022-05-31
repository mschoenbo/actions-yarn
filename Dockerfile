FROM node:lts-alpine

RUN corepack enable && yarn set version stable
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
