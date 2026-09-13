@echo off
setlocal enabledelayedexpansion

set "GAME_DIR=%~dp0"
cd /d "%GAME_DIR%"

echo Creado por Petter005
echo.
echo Guardando la lista de archivos originales...
(
    for /r %%F in (*) do (
        set "filepath=%%F"
        set "relpath=!filepath:%GAME_DIR%=!"
        echo !relpath!
    )
    for /d /r %%D in (*) do (
        set "dirpath=%%D"
        set "relpath=!dirpath:%GAME_DIR%=!"
        echo !relpath!\
    )
) > lista_limpia.txt

echo Estado original guardado en lista_limpia.txt!
echo Presiona cualquier tecla para continuar...
pause >nul
