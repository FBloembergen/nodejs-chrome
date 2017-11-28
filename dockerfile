FROM node:8.6.0

RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN set -x && apt-get update && apt-get install -y google-chrome-stable
ENV CHROME_BIN /usr/bin/google-chrome
