rem *************************************************
rem *** Auto starts terminal and runs backtest/forwardtest ***
rem *************************************************

ping localhost -n 1

:: Set variables
set "currency=AUDNZD" 

----------------------------------------------------------------------------------------------------

:: Delete MT4 previous test file ready for next test.
Del "C:\Program Files (x86)\MT4_Terminal_1\tester\files\OrdersResultsT4.csv"
TIMEOUT /T 1

:: Start Backtesting
start /wait "1" "C:\Program Files (x86)\MT4_Terminal_1\terminal.exe" /portable "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\%currency%_settings_falcond.ini"
TIMEOUT /T 1

------------------------------------------------------------------------------------------------

:: Move results file to database.

:: Source Directory where BackTest Data is located
set SOURCE_DIR="C:\Program Files (x86)\MT4_Terminal_1\tester\files"
:: Destination Directory where Version Control Repository is located
set DEST_DIR="C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\TEST\%currency%"


:: Copy only files with *.csv extension
ROBOCOPY %SOURCE_DIR% %DEST_DIR% *T4.csv


:: Rename Files
set HR=%time:~0,2%
set HR=%Hr: =0% 
set HR=%HR: =%
rename "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\TEST\%currency%\OrdersResultsT4.csv" "%currency%_%date:~10,4%-%date:~4,2%-%date:~7,2%_%HR%%time:~3,2%.csv" 



TIMEOUT /T 1
exit
