FROM gcr.io/cloud-builders/docker
ENV PACK_VERSION 0.9.0 
RUN apt-get install -y wget
RUN wget https://github.com/buildpack/pack/releases/download/v${PACK_VERSION}/pack-v${PACK_VERSION}-linux.tgz
RUN tar xvf pack-v${PACK_VERSION}-linux.tgz
RUN rm pack-v${PACK_VERSION}-linux.tgz
RUN mv ./pack /bin/pack
ENTRYPOINT [ "pack" ]
