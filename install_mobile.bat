@echo off
echo ========================================
echo    CELULAS 3D - INSTALACAO MOBILE
echo ========================================
echo.

echo 1. Verificando se o servidor esta rodando...
netstat -an | findstr ":3000" >nul
if %errorlevel% == 0 (
    echo ✓ Servidor rodando na porta 3000
) else (
    echo ✗ Servidor nao encontrado. Iniciando...
    cd www
    start "Celulas3D Server" python -m http.server 3000
    timeout /t 3 >nul
    cd ..
)

echo.
echo 2. Obtendo IP local...
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr "IPv4"') do (
    set "ip=%%a"
    goto :found
)
:found
set ip=%ip: =%
echo ✓ IP encontrado: %ip%

echo.
echo 3. URLs para acessar no celular:
echo.
echo   📱 ACESSE NO SEU CELULAR:
echo   http://%ip%:3000
echo.
echo 4. Como instalar no celular:
echo.
echo   Android Chrome:
echo   - Abra a URL acima
echo   - Toque no menu (3 pontos)
echo   - Selecione "Adicionar a tela inicial"
echo.
echo   iPhone Safari:
echo   - Abra a URL acima  
echo   - Toque em "Compartilhar"
echo   - Selecione "Adicionar a Tela de Inicio"
echo.
echo ========================================
echo Pressione qualquer tecla para sair...
pause >nul