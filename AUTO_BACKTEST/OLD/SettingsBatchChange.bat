@echo off
set "file=C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\EURJPYsettings_falcond.ini"
if exist "%file%" (
   findstr /v /i "TestFromDate= TestToDate=" "%file%" >"%file%.tmp"
  
rem Set From and To dates. Format YYYY.MM.DD
   >>"%file%.tmp" echo/TestFromDate=2020.01.05
   >>"%file%.tmp" echo/TestToDate=2020.03.05
   move /y "%file%.tmp" "%file%" >nul
 )