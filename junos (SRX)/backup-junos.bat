@echo off
color 8F
title Sauvegarde des configurations des pare-feux Juniper SRX (JunOS)

REM ================================================================
REM But     : Sauvegarde des configurations FW Juniper SRX (Junos OS)
REM Auteur  : @xhark 
REM URL     : http://blogmotion.fr/systeme/script-sauvegarde-configuration-junos-srx-17430
REM License : Creative Commons http://creativecommons.org/licenses/by-nd/4.0/deed.fr
REM Version : 1.0
REM Date    : 20/08/2018

REM ====== VARIABLES (A MODIFIER): =================================

set USERNAME=backup
set CLEPRIVEE=cle-privee.ppk
set SRCIP=srcip.txt
set DESTDIR=D:\scripts\srx100\Backups-conf

REM ====== FIN DES VARIABLES - NE RIEN MODIFIER A PARTIR D'ICI =====

if not exist %DESTDIR% (
    color 4F && echo. 
	echo ERREUR : le repertoire de sortie %DESTDIR% n'existe pas :(
	echo. && pause && exit 1
)

set TIMESTAMP=%date:~-4,4%.%date:~-7,2%.%date:~-10,2%_%time:~0,2%h_%time:~3,2%m_%time:~6,2%
echo. && echo === === Sauvegarde des configurations Junos (SRX) === === && echo.

for /F "tokens=1,2 delims=," %%A in (%SRCIP%) do (
	echo Sauvegarde de %%A...
	IF NOT EXIST "%DESTDIR%\%TIMESTAMP%\%%A" mkdir "%DESTDIR%\%TIMESTAMP%\%%A"
	echo y | pscp -i "%CLEPRIVEE%" -q -unsafe -scp %USERNAME%@%%A:/config/*.gz "%DESTDIR%/%TIMESTAMP%/%%A/" && echo OK! || echo !!! ERREUR sur %%A !!!!
	echo.
)

REM temporisation 10 secondes
timeout 10

REM Si lancement manuel, decommentez la suite pour faciliter le debug
REM explorer %DESTDIR%
REM echo ... Fin du script de sauvegarde - Pressez une touche ...
REM pause >nul