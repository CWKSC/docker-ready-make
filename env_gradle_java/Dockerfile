FROM ubuntu:latest

# https://linuxize.com/post/how-to-install-gradle-on-ubuntu-20-04/
# https://gradle.org/install/
# https://docs.gradle.org/current/samples/sample_building_kotlin_libraries.html

RUN apt update && apt install -y \
    default-jdk \
    wget \
    unzip 

ENV GRADLE_VERSION=7.3.2

RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -P /tmp && \
    unzip -d /opt/gradle /tmp/gradle-${GRADLE_VERSION}-bin.zip

ENV PATH=$PATH:/opt/gradle/gradle-${GRADLE_VERSION}/bin

COPY ./resource/start.sh .
RUN chmod +x /start.sh
CMD ["/start.sh"]

WORKDIR /workspace
