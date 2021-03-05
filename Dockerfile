FROM openjdk:11-jdk

LABEL maintainer="Mujahid Khaleel <mujahidkhaleel@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends graphviz fonts-wqy-zenhei && rm -rf /var/lib/apt/lists/*

ARG PLANTUML_VERSION=1.2021.1
ARG BASE_URL=https://repo1.maven.org/maven2/net/sourceforge/plantuml/plantuml/${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar

RUN mkdir -p /opt/plantuml/ \
   && curl -fsSL -o /opt/plantuml/plantuml.jar ${BASE_URL}
