if not exist ".\build\CBJQ_CQXJ_HideUI" mkdir ".\build\CBJQ_CQXJ_HideUI"
if not exist ".\build\CBJQ_CQXJ_HideUI" exit /B 1
:retry_entry_label
if exist ".\build\CBJQ_CQXJ_HideUI.xpi" del ".\build\CBJQ_CQXJ_HideUI.xpi"
@ if exist ".\build\CBJQ_CQXJ_HideUI.xpi" @(
    echo "Error: Fail to delete CBJQ_CQXJ_HideUI.xpi"
    choice /M "Do you want to continue packing for Chrome/Edge? [Y/N] Or retry? [R]: " /C YNR /N
    if ERRORLEVEL 3 goto :retry_entry_label
    if ERRORLEVEL 2 exit /B 1
)
del ".\build\CBJQ_CQXJ_HideUI\*.*" /Q /S
rmdir ".\build\CBJQ_CQXJ_HideUI" /S /Q
if not exist ".\build\CBJQ_CQXJ_HideUI\res\icons" mkdir ".\build\CBJQ_CQXJ_HideUI\res\icons"
if not exist ".\build\CBJQ_CQXJ_HideUI\res\icons" exit /B 1

xcopy /E /Y ".\src\*" ".\build\CBJQ_CQXJ_HideUI\"

copy ".\res\icons\icon.png" ".\build\CBJQ_CQXJ_HideUI\res\icons\icon.png"

ren ".\build\CBJQ_CQXJ_HideUI\manifest-firefox.json" "manifest.json"
7z a -sse ".\build\CBJQ_CQXJ_HideUI.xpi" ".\build\CBJQ_CQXJ_HideUI\*" -x!".\build\CBJQ_CQXJ_HideUI\manifest-chrome.json"
ren ".\build\CBJQ_CQXJ_HideUI\manifest.json" "manifest-firefox.json"
ren ".\build\CBJQ_CQXJ_HideUI\manifest-chrome.json" "manifest.json"
