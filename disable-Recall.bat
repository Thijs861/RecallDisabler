@echo off 

REM Commands to disable Recall.
Dism /Online /Get-Featureinfo /Featurename:Recall
Dism /Online /Disable-Feature /Featurename:Recall

REM Tell the user Recall has been disabled.
if "Recall"=="enabled" (
    echo Failed to disable Recall.
) else (
    echo Recall is not active. This window will close in: 10 seconds.
    
    REM Count down to close the window.
    for /l %%i in (10,-1,1) do (
        echo Closing in %%i seconds...
        timeout /t 1 > nul
    )
exit 
)