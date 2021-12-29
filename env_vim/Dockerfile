FROM ubuntu:latest

RUN apt update && apt install -y vim

COPY ./resource/start.sh .
RUN chmod +x /start.sh
CMD ["/start.sh"]

WORKDIR /workspace
