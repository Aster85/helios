FROM eclipse-temurin:17-jdk-jammy  
WORKDIR /app 
COPY Main.java /app/Main.java 
RUN javac Main.java 
CMD ["java", "Main"]

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

FROM python:3.11-slim
WORKDIR /app
RUN pip install mysql-connector-python
COPY app.py /app/app.py
CMD ["python", "app.py"]

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
