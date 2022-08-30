FROM node:16

# VSCode init
RUN mkdir -p /root/workspace /root/.vscode-server/extensions

# GH-cli
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
RUN apt update && apt install -y software-properties-common
RUN apt-add-repository https://cli.github.com/packages
RUN apt update && apt install -y gh

# Install deps
RUN npm install -g npm@latest
RUN npm install -g eslint typescript expo-cli @expo/ngrok@^4.1.0

# Smoke test
RUN node --version && npm --version

# Copy setup script
COPY ./setup.sh /usr/bin/setup
RUN chmod +x /usr/bin/setup

CMD /bin/sh -c "while sleep 86000; do :; done"
