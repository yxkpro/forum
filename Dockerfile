FROM nodebb/docker:latest

COPY config.json /usr/src/app/config.json

ENV NODE_ENV=production

EXPOSE 4567

CMD ["./nodebb", "start"]