FROM openjdk:11-jdk AS build
COPY calculator.java .
RUN javac calculator.java

FROM openjdk:11-jre AS run
COPY --from=build calculator.class .
CMD java calculator