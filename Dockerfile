FROM wordpress

# Install sendmail
RUN apt-get update && apt-get install -y sendmail nano

# Configure sendmail
COPY sendmail.mc /etc/mail/sendmail.mc
COPY submit.mc /etc/mail/submit.mc
COPY trusted-users /etc/mail/trusted-users

# Reload sendmail before starting wordpress
CMD /etc/init.d/sendmail restart && /usr/local/bin/docker-entrypoint.sh "apache2-foreground"
