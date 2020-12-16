#!/bin/bash
dpkg --configure -a
apt-get -y update

# install Apache2
apt-get -y install apache2
apt-get -y install mysql-server
apt-get -y install php libapache2-mod-php php-mysql

# write HTML file
echo -n "<html><body style=\"background-color: black;\"><center><a href=\"https://www.trace3.com\"><img src=\"https://www.trace3.com/media/logo/websites/6/Trace3_logo_RGB.png\" alt=\"Trace 3 Logo\"></a><h1 style=\"color: white\">Demo App</h1><br/></center></html>\n" > /var/www/html/index.html

# restart Apache
apachectl restart