FROM node:16

# VSCode init
RUN mkdir -p /root/workspace /root/.vscode-server/extensions

# Install deps
RUN npm install -g npm@latest
RUN npm install -g eslint typescript expo-cli @expo/ngrok@^4.1.0

# Smoke test
RUN node --version && npm --version

# Copy setup script
COPY ./setup.sh /usr/bin/setup
RUN chmod +x /usr/bin/setup

RUN apt update && apt install -y dos2unix
RUN dos2unix /usr/bin/setup
RUN apt remove -y dos2unix && apt autoremove

CMD /bin/sh -c "while sleep 86000; do :; done"
