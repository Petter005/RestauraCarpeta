@echo off
setlocal enabledelayedexpansion

set "GAME_DIR=%~dp0"
cd /d "%GAME_DIR%"

echo Creado por Petter005
echo.

if not exist lista_limpia.txt (
    echo Error: lista_limpia.txt no fue encontrado. No se puede limpiar de forma segura.
    pause
    exit /b
)

echo ADVERTENCIA: Esto borrara todos los mods instalados y eliminara estos scripts.
set /p "confirm=Seguro que quieres continuar? (S/N): "
if /i "%confirm%" neq "S" exit /b

echo Limpiando archivos...

for /r %%F in (*) do (
    set "filepath=%%F"
    set "relpath=!filepath:%GAME_DIR%=!"
    
    if "!relpath!" neq "Guardar_folder_limpio.bat" if "!relpath!" neq "Restaurar_folder_limpio.bat" if "!relpath!" neq "lista_limpia.txt" (
        findstr /x /c:"!relpath!" lista_limpia.txt >nul
        if errorlevel 1 (
            echo Borrando archivo: !relpath!
            del /f /q "%%F" 2>nul
        )
    )
)

echo Limpiando carpetas vacias de mods...

for /f "delims=" %%D in ('dir /b /s /ad ^| sort /r') do (
    if exist "%%D" (
        rmdir "%%D" 2>nul
        if not exist "%%D" (
            set "folderpath=%%D\"
            set "relpath=!folderpath:%GAME_DIR%=!"
            echo Borrando carpeta vacia: !relpath!
        )
    )
)

echo.
echo Devolviendo la carpeta a su estado original...

if exist "lista_limpia.txt" del /f /q "lista_limpia.txt"
if exist "Guardar_folder_limpio.bat" del /f /q "Guardar_folder_limpio.bat"

echo Limpieza completa! Este script se auto-destruira ahora.
timeout /t 3 >nul

(goto) 2>nul & del "%~f0"
