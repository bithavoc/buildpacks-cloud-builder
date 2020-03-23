FROM gcr.io/cloud-builders/docker
ENV PACK_VERSION 0.9.0
RUN apt-get install -y wget curl
RUN wget https://github.com/buildpack/pack/releases/download/v${PACK_VERSION}/pack-v${PACK_VERSION}-linux.tgz
RUN tar xvf pack-v${PACK_VERSION}-linux.tgz && rm pack-v${PACK_VERSION}-linux.tgz && mv ./pack /bin/pack
RUN apt-get purge -y wget && apt-get autoremove && apt-get clean
ENTRYPOINT [ "pack" ]
