FROM drupal
RUN apt-get update && apt-get install -y git ssh-client ca-certificates
RUN a2enmod rewrite
RUN service apache2 restart
