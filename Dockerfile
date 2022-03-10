FROM cubecoders/ampbase

# Install required utilities
RUN apt-get update -y && apt-get upgrade -y && \
  apt-get install -y \
  apt-transport-https \
  ca-certificates \
  python2 \
  build-essential \
  curl \
  gnupg2 \
  software-properties-common

# Install the latest version of Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  apt-get update -y && apt-get install -y nodejs

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ampstart.sh"]
CMD []
