FROM cubecoders/ampbase

RUN apt-get update && apt-get -y upgrade && \
  apt-get install -y nodejs npm && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ampstart.sh"]
CMD []
