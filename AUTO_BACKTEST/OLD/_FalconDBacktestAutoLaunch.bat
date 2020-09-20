rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 5

:: Delete MT4 file ready for next test.
Del "C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\tester\files\OrdersResultsT2.csv"
TIMEOUT /T 5

:: Start Backtesting
start /wait "1" "C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\terminal.exe" /portable "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\EURUSDsettings_falcond.ini"
TIMEOUT /T 5
start /wait "2" "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\EURUSDPullFromMT4Dev.bat"
TIMEOUT /T 5
start /wait "3" "C:\Program Files (x86)\MetaTrader - AxiTrader - Term2\terminal.exe" /portable "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\EURJPYsettings_falcond.ini"
TIMEOUT /T 5
start /wait "4" "C:\Users\Kris\Documents\GitHub\LazyTrade\FALCON_D\AUTO_BACKTEST\EURJPYPullFromMT4Dev.bat"
TIMEOUT /T 5
exit