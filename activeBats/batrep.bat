@echo off 
set report_dir=%active_bats%\batrep
pushd %report_dir%
powercfg /batteryreport 
foxfile battery-report.html
popd