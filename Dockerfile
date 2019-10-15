FROM node:12-slim
# Install Graphicsmagick, required for image build:
RUN apt-get update && apt-get install -y graphicsmagick

ENV PORT='4000'

EXPOSE 4000
# Default work dir, mount your volume with code on this folder:
WORKDIR /usr/src/app

COPY ./bin/entry-point.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["npm", "start"]