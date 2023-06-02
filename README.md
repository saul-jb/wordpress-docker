# wordpress-docker
Docker files for getting wordpress going with sendmail working.

## Getting Started

1. Search and replace `example.com` in `sendmail.mc` with your domain.
2. Change `DB_NAME`, `DB_USER` and `DB_PASSWORD` with appropriate values.
3. Run `docker compose up`
4. Setup Nginx
  1. Search and replace `example.com` in `nginx.conf` with your domain.
  2. Move `nginx.conf` to `/etc/nginx/sites-available/<YOUR_DOMAIN_NAME>`.
  3. Run `ln -s /etc/nginx/sites-available/<YOUR_DOMAIN_NAME> /etc/nginx/sites-enabled/<YOUR_DOMAIN_NAME>`.
  3. Run `service nginx restart`.
5. (Optional) Setup systemd service.
  1. Replace `/var/www/wordpress` in `wordpress.service` with the path to this directory.
  2. Move `wordpress.service` to `/etc/systemd/system/`
