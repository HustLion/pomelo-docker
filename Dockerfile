
# docker build -t hustlion/pomelo .
# docker run -i -t hustlion/pomelo /bin/bash

FROM node:9.8.0

RUN npm install -g pomelo


CMD [ "node" ]