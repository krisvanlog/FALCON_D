rem Script to Sync Files from Development Terminal to Version Control


@echo off
set "file=C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\testini.ini"

:: start "C:\Program Files (x86)\setini\SetIni.exe" "%file%" "Common" "TestSymbol" "AUDCHF"



INIFILE %file% [Common] TestSymbol=AUDCHF

pause

exit