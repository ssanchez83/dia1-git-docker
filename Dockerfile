FROM eclipse-temurin:17
WORKDIR /app
COPY java/Hola.java .
RUN javac Hola.java
CMD ["java", "Hola"]
