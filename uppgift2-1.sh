#!/bin/bash

# Del 1: Installera en webserver och en statisk hemsida med mitt namn på.

# Kolla om nuvarande användare är root.
if [ $(whoami) != root ]; then
echo "You are running as $(who). Please run as root or sudo command"
exit
fi

# Installear nginx webserver
apt-get install nginx -y

# Om du är inte root, input du sudo !! i termianl fönster efter meddelande för att köra om kommando som installerar applicationen. 

# Titta på nginxs status
systemctl status nginx

# Skriva om default index websidan, lägg till mitt namn.
echo "
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Jag heter Xin Gao.</h1>
</body>
</html>
" | sudo tee /var/www/html/index.nginx-debian.html > /dev/null

# Starta om nginx 
systemctl restart nginx

# Visa default index websidans innehåller
curl localhost







