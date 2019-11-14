FROM node:12-slim
# Install Graphicsmagick, required for image build:
RUN apt-get update && \
    apt-get install -y --no-install-recommends graphicsmagick && \
    apt-get purge -y curl && \
    apt-get autoremove -y && \
    apt-get clean

# Install We.js CLI
RUN npm install --silent --production -g we
# Default port and ENV:
ENV PORT='4000' \
  NODE_ENV=production

EXPOSE 4000
# Default work dir, mount your volume with code on this folder:
WORKDIR /usr/src/app

COPY ./bin/entry-point.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["npm", "start"]