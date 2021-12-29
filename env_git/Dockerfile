FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
    git 

COPY ./resource/git_clone.sh /
RUN chmod +x /git_clone.sh
RUN echo "alias clone='source /git_clone.sh'" >> ~/.bashrc

COPY ./resource/git_status.sh /
RUN chmod +x /git_status.sh
RUN echo "alias st='source /git_status.sh'" >> ~/.bashrc

COPY ./resource/start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]

WORKDIR /workspace
