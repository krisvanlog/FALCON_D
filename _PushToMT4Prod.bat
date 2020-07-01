rem Script to Deploy files from Version Control repository to All Terminals
rem Use when you need to publish all files to All Terminals

@echo off
setlocal enabledelayedexpansion

set SOURCE_DIR="C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D"
set DEST_DIR1="C:\Program Files (x86)\MetaTrader - AxiTrader - Term1\MQL4\Experts\FALCON_D"
set DEST_DIR2="C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\MQL4\Experts\FALCON_D"
set DEST_DIR3="C:\Program Files (x86)\MetaTrader - AxiTrader - Term3\MQL4\Experts\FALCON_D"
set DEST_DIR4="C:\Program Files (x86)\MetaTrader - AxiTrader - Term4\MQL4\Experts\FALCON_D"

ROBOCOPY %SOURCE_DIR% %DEST_DIR1% *.mq4
ROBOCOPY %SOURCE_DIR% %DEST_DIR2% *.mq4
ROBOCOPY %SOURCE_DIR% %DEST_DIR3% *.mq4
ROBOCOPY %SOURCE_DIR% %DEST_DIR4% *.mq4



