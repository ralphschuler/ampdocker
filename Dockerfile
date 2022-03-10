FROM cubecoders/ampbase

# Install required utilities
RUN apt-get update -y && apt-get upgrade -y && \
  apt-get install -y \
  apt-transport-https \
  ca-certificates \
  make \
  gcc \
  g++ \
  curl \
  gnupg2 \
  software-properties-common

# Install the latest version of Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  apt-get update -y && apt-get install -y nodejs

# Install the latest version of yarn
RUN npm install --global yarn

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN yarn global add screeps

ENTRYPOINT ["/ampstart.sh"]
CMD []
