FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
    git 

COPY ./resource/clone.sh /
RUN chmod +x /clone.sh
RUN echo "alias clone='source /clone.sh'" >> ~/.bashrc

COPY ./resource/start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

WORKDIR /workspace
