rem Script to Sync Files from Development Terminal to Version Control

@echo off
setlocal enabledelayedexpansion


:: Source Directory where BackTest Data is located
set SOURCE_DIR="C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\tester\files"
:: Destination Directory where Version Control Repository is located
set DEST_DIR="C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\ts\EURJPY"


:: Copy only files with *.csv extension
ROBOCOPY %SOURCE_DIR% %DEST_DIR% *T2.csv


:: Rename Files
set HR=%time:~0,2%
set HR=%Hr: =0% 
set HR=%HR: =%
rename "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\ts\EURJPY\OrdersResultsT2.csv" "EURJPY_%date:~10,4%-%date:~4,2%-%date:~7,2%_%HR%%time:~3,2%.csv" 


:: Delete MT4 file ready for next test.
Del "C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\tester\files\OrdersResultsT2.csv"


TIMEOUT /T 3
exit