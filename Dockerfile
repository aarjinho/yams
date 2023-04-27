# Utilisation de l'image de base Java
FROM openjdk:11-jre-slim

ADD target/yams.jar yams.jar

# Copie des fichiers nécessaires
COPY joueur.jar /app/
COPY application.properties /app/

# Définition du répertoire de travail
WORKDIR /app

# Exposition du port
EXPOSE 8080

# Commande de démarrage du microservice
CMD ["java", "-jar", "joueur.jar"]
