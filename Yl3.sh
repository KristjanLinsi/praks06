#!/bin/bash
#Antud ülesanne lahenduses tuleb kasutada sisseehitatud if lause võimalused.
#Antud lause omapära on selles, et see nagu “ehitatakse” teise tingimuslause sisse.
#Selleks, et visuaalselt see oleks paremin
#märgatav - sisemine tingimuslause nihutatakse parempoolsele servale näiteks TAB klahvi abil.
#
osch=0
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
#
echo -n "Select your os choice [1 or 2]?"
read osch
#
if [ $osch -eq 1 ] ; then
echo "You Pick up Unix (Sun Os)"
else #### nested if i.e. if within if ######
	if [ $osch -eq 2 ] ; then
echo "You Pick up Linux (Red Hat)"
	else
		echo "What you don't like Unix/Linux OS."
	fi
fi
#Sain skripti tööle ja lasi valida ka nr 3 vastuseks.
#Seepeale tuligi vastuseke "What you don't like Unix/Linux OS."
#skripti lõpp
