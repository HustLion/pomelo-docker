
# docker build -t hustlion/pomelo .
# docker run -i -t hustlion/pomelo /bin/bash
# docker login
# docker tag hustlion/pomelo hustlion/pomelo:0.1.0
# docker push hustlion/pomelo:0.1.0

FROM node:8.10.0

RUN npm install -g pomelo


CMD sleep infinity