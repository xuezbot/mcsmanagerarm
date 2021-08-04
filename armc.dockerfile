FROM ubuntu
ADD tz.sh /tz.sh
RUN /tz.sh
RUN apt-get update \
    && apt install -y openjdk-11-jdk wget git npm \
    && git clone https://gitee.com/Suwingser/MCSManager.git \
    && cd MCSManager/ \
    && npm install
VOLUME /data
EXPOSE 23333
CMD ["npm","start"]