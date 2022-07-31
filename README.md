# Docker container with PHP, MySQL e Redis

this container loads images of:

- PHP 8.1
- MySQL 8
- Redis 7
- Composer 2.3

It is ready to use, at the first start it imports all the sql files present in the `.docker/mysql/dump/` folder and automatically executes the composer install command.

For ease of maintenance, the configuration parameters have been moved to the `.env` file.

The only command to use is **`docker-compose up`**, add `-d` if you don't want to see the command output.

Once the container is started, to view the www folder on the browser, open the address 
[http://localhost:8888](http://localhost:8888), while for phpmyadmin [http://localhost:9000](http://localhost:9000), both ports can be changed from the .env file.

In the www folder there is also a courtesy file with the phpinfo, to immediately see the extensions installed, it can be reached at this link

[http://localhost:8888/phpinfo.php](http://localhost:8888/phpinfo.php)

The php directives can be overridden by the `.docker/php/php.ini` file.

The MySQL and Redis parameters can also be overwritten by the respective configuration files present in the subfolders of .docker.

I don't think you need to mention that MySQL still needs to be initialized on first boot and takes a little longer even though the console output says it's ready.

Enjoy!

:star: **If you liked what I did, if it was useful to you or if it served as a starting point for something more magical let me know with a star** :green_heart:
