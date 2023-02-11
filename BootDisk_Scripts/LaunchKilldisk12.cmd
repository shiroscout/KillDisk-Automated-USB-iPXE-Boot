cd /d %~dp0
set dr=%~d0
set kdcert=%dr%\_kd\cert
set kdlog=%dr%\_kd\log
set kdreport=%dr%\_kd\report
set kdsettings=%dr%\_kd\Settings
IF NOT EXIST %kdlog%\NUL md %kdlog%
IF NOT EXIST %kdcert%\NUL md %kdcert%
IF NOT EXIST %kdreport%\NUL md %kdreport%
IF NOT EXIST %kdsettings%\NUL md %kdsettings%
x:
cd "x:\program files\bootdisk"
IF EXIST %kdsettings%\settings.xml copy %kdsettings%\settings.xml "x:\program files\bootdisk"
killdisk -cp=%kdcert% -lp=%kdlog% -ea -xr
copy "x:\program files\bootdisk\settings.xml" %kdsettings%
