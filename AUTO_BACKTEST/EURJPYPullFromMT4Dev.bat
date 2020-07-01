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
RENAME C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\ts\EURJPY\OrdersResultsT2.csv EURJPY.csv

:: Delete MT4 file ready for next test.
Del "C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\tester\files\OrdersResultsT2.csv"

TIMEOUT /T 5
exit