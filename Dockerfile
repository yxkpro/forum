FROM nodebb/docker:latest

RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

COPY config.json.template /usr/src/app/config.json.template
COPY start.sh /usr/src/app/start.sh

RUN chmod +x /usr/src/app/start.sh

ENV NODE_ENV=production

EXPOSE 4567

CMD ["/usr/src/app/start.sh"]