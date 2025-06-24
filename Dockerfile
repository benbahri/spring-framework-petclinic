FROM tomcat:10.0-jdk17
# Effacer les exemples par défaut pour un conteneur propre
RUN rm -rf /usr/local/tomcat/webapps/*
# Copier le fichier WAR généré
COPY target/*.war /usr/local/tomcat/webapps/
# Exposer le port HTTP par défaut de Tomcat
EXPOSE 8080
# Lancer Tomcat au démarrage
CMD ["catalina.sh", "run"]
