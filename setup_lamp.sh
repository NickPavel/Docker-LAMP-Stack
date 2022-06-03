#!/bin/sh
docker-compose up -d
sudo chmod -R 777 html/
sudo chmod -R 777 apache2-logs/
sudo chmod -R 777 sites-available/
mv index.html html/
mv phpinfo.php html/
mv adminer.php html/
mv 000-default.conf sites-available/
sudo mv start_lamp.service /etc/systemd/system/
sudo chmod 644 /etc/systemd/system/start_lamp.service
sudo systemctl enable start_lamp.service
docker exec lamp1 sh -c 'exec service mariadb restart'
docker exec lamp1 sh -c 'exec service apache2 restart'
docker exec -it lamp1 sh -c 'exec mysql_secure_installation'
