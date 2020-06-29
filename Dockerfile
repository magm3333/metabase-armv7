FROM adoptopenjdk/openjdk11:armv7l-ubuntu-jdk-11.0.7_10

RUN apt update && apt install -y tzdata

RUN mkdir -p /app
RUN mkdir -p /app/database

WORKDIR /app

COPY metabase.jar .
COPY run.sh .

RUN chmod +x ./run.sh

RUN PATH="/app:$PATH"
RUN export PATH

EXPOSE 3000

ENTRYPOINT ["/app/run.sh"]

