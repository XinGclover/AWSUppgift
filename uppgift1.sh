#!/bin/bash

#Uppgift1 skapa en fil med mitt namn i coh se till att bara jag kan få återkomst till den. Lägg till min favoritfärg och mitt favoritdjur. Visa innehållet. 
#Ändra file så att den endast nås av root. Lägg till ytterligare en färg och ett djur.


touch textfile.txt

echo $USER Gao> textfile.txt

chmod 600 textfile.txt

ls -la

cat <<End>> textfile.txt
green
panda
End

echo "Visa innehållet:"
cat textfile.txt

sudo chown root:root textfile.txt

sudo tee -a textfile.txt <<End
red
cat
End

ls -la
sudo cat textfile.txt

