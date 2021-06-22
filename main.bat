@ECHO OFF
CLS
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO Press any of the number keys to select your edition 
ECHO ...............................................
ECHO.
ECHO 1 - Pro
ECHO 2 - Pro N
ECHO 3 - Pro for Workstations
ECHO 4 - Pro for Workstations N
ECHO 5 - Pro Education
ECHO 6 - Pro Education N
ECHO 7 - Education
ECHO 8 - Education N
ECHO 9 - Convert to 11 SE
ECHO.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, or 9 then press ENTER:
IF %M%==1 GOTO PRO
IF %M%==2 GOTO PRON
IF %M%==3 GOTO PROFW
IF %M%==4 GOTO PROFWN
IF %M%==5 GOTO PROEDU
IF %M%==6 GOTO PROEDUN
IF %M%==7 GOTO EDU
IF %M%==8 GOTO EDUN
IF %M%==9 GOTO SE
:PRO
slmgr /upk
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:PRON
slmgr /upk
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:PROFW
slmgr /upk
slmgr /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:PROFWN
slmgr /upk
slmgr /ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:PROEDU
slmgr /upk
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:PROEDUN
slmgr /upk
slmgr /ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:EDU
slmgr /upk
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:EDUN
slmgr /upk
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
:SE
slmgr /upk
slmgr /ipk 37D7F-N49CB-WQR8W-TBJ73-FM8RX
slmgr /skms kms8.msguides.com
slmgr /ato
echo Activated
pause
