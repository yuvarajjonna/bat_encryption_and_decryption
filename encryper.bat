::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFAJBWgWQPWH0DIk47fvw++WXnk8cQOE3fobX3/yZL/IYo3ntdpkjxUZWl8gHQhJbcXI=
::YAwzuBVtJxjWCl3EqQJhSA==
::ZR4luwNxJguZRRnRoCI=
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAJBWgWQPWH0DIk47fvw++WXnmMYQ6I5d4Pf36ayKuEd60vtSZMj1WhDiN8JHlVdZhfL
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enableDelayedExpansion
set /p key= enter encrption key:
del encrpted.txt 
IF [%1] == [] (
set /p code= enter text:
set chars=0123456789abcdefghijklmnopqrstuvwxyz!?,.
for /L %%N in (10 1 40) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a math=%%N*%key%
for /F %%F in ("!math!") do (
set "code=!code:%%C=-%%F!"
)
)
)
echo !code! >> encrpted.txt
echo message encypted successfully!
pause
) ELSE (
set code=%~1
echo %1
pause
echo type %1
for /f "tokens=1-3* delims=," %%A in ('type %1') do (
set msg=%%A
echo !msg!
pause
set chars=0123456789abcdefghijklmnopqrstuvwxyz!?,.
for /L %%N in (10 1 40) do (
for /F %%C in ("!chars:~%%N,1!") do (
set /a math=%%N*%key%
for /F %%F in ("!math!") do (
set "msg=!msg:%%C=-%%F!"
)
)
)
echo !msg! >> encrpted.txt
)
echo message encypted successfully!
pause
)
