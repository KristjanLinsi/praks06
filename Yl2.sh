#!/bin/bash
#Kohenda/Täienda busside arvutamise skript(praks3, üleaanne 4 ) nii, et kui tekivad reijad,
# kes ei mahu täisbusside sisse, siis suurendatakse busside arv ühe võrra.
#Koosta skript, mis oleks abiks bussieksursioonide korraldejale.
#Skript peab lubama kasutajale sisestada mitu reaisujat on grupis nind kohtade arv ühes bussis.
#Tulemusena väljastatakse mitu on täielikult täidetud bussi ja mitu inimest on maha jäänud.

# reisi korraldamine
# inimeste andmed
echo -n "Mitu reisijat on grupis:"
read reisijad

echo -n "Sisesta kohtade arv bussi:"
read kohad
#
#arvutused
#
# jagame inimesed busside vahel nii, et kõik kohad bussides oleks täidetud - sellega
# saame  teada, palju busse on vaja
bussid=$(($reisijad/$kohad))
# vaatame, palju on neid, kes ei saanud kohta bussides - need on üle jäänud reisijad,
# ehk jäägid, kui kõik kohad on täidetud
ylejaanud=$(($reisijad%$kohad))
#
# kui on olemas ülejäänud, tuleb suurendede busside arve 1 võrra
if [ $ylejaanud -gt 0 ]; then
# bussid  muutuja vajab yledefineerimist, selle pärast ümbersalvestamiseks
#ei kasuta $ märki, aga arvutamisel juba kasutame
bussid=$(($bussid + 1))
fi
# tulemuseste väljastamine
#
echo "Kokku on vaja $bussid täisbussi:"
#echo "Maha jäi $ylejaanud reisijat:"
#
#skripti lõpp
