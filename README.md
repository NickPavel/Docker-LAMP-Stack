Docker LAMP Stack for Development

I wanted a LAMP stack development machine that is very light, fast, and uses the host kernel, but has apache, mariadb, and php in ONE sandboxed container! I could not find that, so I made my own.

The container is bootstrapped from a yaml file and references a dockerfile.

Start the setup process by placing all files in a folder (e.g. LAMP) in your home folder.

Then, from a terminal:
 - cd into that folder
 - change user name in the file start_lamp.service (unless your user name is nick)
 - "sh setup_lamp.sh"
 - when securing mariadb answer like this: enter, n, y, new password, y, y, y, y

Done! Now go to:

http://localhost

http://localhost/phpinfo.php

http://localhost/adminer.php

It works!

If needed, stop the container with "docker-compose stop" in that folder

Add and edit your webapps files in the new "html" folder

In case the container is down, start it with "sh start_lamp.sh"

Access the container with "sh access_lamp.sh"

If you need to start over, use "sh delete_volumes_and_containers.sh"

Enjoy and Code On!
