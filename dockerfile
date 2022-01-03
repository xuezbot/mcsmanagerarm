FROM ubuntu
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get update \
    && apt install -y openjdk-17-jdk  git npm \
    && git clone https://gitee.com/Suwingser/MCSManager.git \
    && cd MCSManager/ \
    && npm install \
    && apt autoremove git -y 
VOLUME /data
WORKDIR /MCSManager
EXPOSE 23333 25565
CMD ["npm","start"]
