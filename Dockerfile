FROM wordpress

# Install sendmail
RUN apt-get update && apt-get install -y sendmail nano

# Configure sendmail
COPY sendmail.mc /etc/mail/sendmail.mc

# Reload sendmail before starting wordpress
CMD /etc/init.d/sendmail restart && /usr/local/bin/docker-entrypoint.sh "apache2-foreground"
