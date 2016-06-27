FROM alpine:3.3
MAINTAINER Benoit Verreault <blackknight65@hotmail.com>

ENV SONAR_VERSION=5.5 \
    SONARQUBE_HOME=/opt/sonarqube \
    # Database configuration
    # Defaults to using H2
    SONARQUBE_JDBC_USERNAME=sonar \
    SONARQUBE_JDBC_PASSWORD=sonar \
    SONARQUBE_JDBC_URL=jdbc:h2:tcp://localhost:9092/sonar

WORKDIR /opt

RUN apk --update add openjdk7-jre curl bash && \
    curl -L -o sonarqube.zip https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip && \
    unzip sonarqube.zip && \
    mv sonarqube-$SONAR_VERSION sonarqube && \
    rm sonarqube.zip* && \
    apk del --purge curl

EXPOSE 9000
VOLUME ["$SONARQUBE_HOME/data", "$SONARQUBE_HOME/extensions"]

WORKDIR $SONARQUBE_HOME
COPY run.sh $SONARQUBE_HOME/bin/
RUN chmod +x ./bin/run.sh
ENTRYPOINT ["./bin/run.sh"]
