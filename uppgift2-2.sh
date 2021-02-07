#!/bin/bash

# Del 2: Visa serverns resursutnyttjande samt loggar från webservern.

# Kolla om nuvarande användare är root.
if [ $(whoami) != root ]; then
echo "You are running as $(who). Please run as root or sudo command"
exit
fi

# Installera htop som är en gratis och öppen källkod-baserad processvisare för Linux
apt-get install htop -y

# Installera netstat som är Linux nätverks och statistik övervakningsverktyg
apt-get install net-tools -y


# Om du är inte root, input du sudo !! i termianl fönster efter meddelande för att köra om kommando som installerar applicationen. 

# Aktivt monitorera servans resursutnyttjande
htop

# Aktivt monitorera loggar från webservern
netstat

