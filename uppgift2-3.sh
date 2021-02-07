#!/bin/bash

# Del 3: Loggga in remote via SSH till en annan linux-server på samma nätverk och gör samma sak som tidigare steg
# Den delen för origianl dator att logga in remote linux-server

# Kolla om nuvarande användare är root.
if [ $(whoami) != root ]; then
echo "You are running as $(who). Please run as root or sudo command"
exit
fi

# Installera SSH sen starta ssh
apt-get install openssh-server -y

systemctl enable ssh

systemctl start ssh

# Om du är inte root, input du sudo !! i termianl fönster efter meddelande för att köra om kommando som installerar applicationen. 


# Gå till hem katalogen
cd~

# Generera nyckel(public och privat nyckel)
ssh-keygen
# Sätta följande inställingarna som tom

# Visa filer i .ssh katalogen
ls -l .ssh/

# Kopiera den publika nyckeln till mottagar-servern
ssh-copy-id xin@10.0.2.5

# Logga in med SSH med användarnamn och lösenord
ssh xin@10.0.2.5



