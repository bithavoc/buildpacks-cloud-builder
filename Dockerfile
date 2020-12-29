FROM gcr.io/cloud-builders/docker
ENV PACK_VERSION 0.15.1
ENV PACK_TAR pack-v${PACK_VERSION}-linux.tgz
ENV BUILDPACKER_VERSION 0.1.1
ENV BUILDPACKER_TAR buildpacker_v${BUILDPACKER_VERSION}_linux_x86_64.tar.gz
RUN apt-get install -y wget curl
RUN wget https://github.com/buildpack/pack/releases/download/v${PACK_VERSION}/${PACK_TAR}
RUN tar xvf ${PACK_TAR} && mv ./pack /bin/pack
RUN wget https://github.com/widemeshcloud/buildpacker/releases/download/v${BUILDPACKER_VERSION}/${BUILDPACKER_TAR}
RUN tar xvf $BUILDPACKER_TAR && mv ./buildpacker /bin/buildpacker
RUN rm *.tgz && rm *.tar.gz && apt-get autoremove && apt-get clean
ENTRYPOINT [ "buildpacker" ]
