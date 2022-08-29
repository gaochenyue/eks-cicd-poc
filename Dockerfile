FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-boot-hello-1.0.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar /spring-boot-hello-1.0.jar"]
