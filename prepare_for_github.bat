@echo off
echo ========================================
echo   PREPARAR PROJETO PARA GITHUB
echo ========================================
echo.

echo 1. Criando arquivo ZIP para upload...
cd ..
powershell -command "Compress-Archive -Path 'celulas3d-app\*' -DestinationPath 'celulas3d-app-github.zip' -Force"

if exist "celulas3d-app-github.zip" (
    echo ✓ ZIP criado: celulas3d-app-github.zip
) else (
    echo ✗ Erro ao criar ZIP
    pause
    exit
)

echo.
echo 2. Verificando arquivos importantes...
if exist "celulas3d-app\.github\workflows\build-android.yml" (
    echo ✓ Workflow do GitHub Actions encontrado
) else (
    echo ✗ Workflow não encontrado
)

if exist "celulas3d-app\www\index.html" (
    echo ✓ Aplicação web encontrada
) else (
    echo ✗ Aplicação web não encontrada
)

if exist "celulas3d-app\package.json" (
    echo ✓ Package.json encontrado
) else (
    echo ✗ Package.json não encontrado
)

echo.
echo ========================================
echo           PRÓXIMOS PASSOS
echo ========================================
echo.
echo 1. 📱 Abra o GitHub no celular ou PC
echo 2. 🆕 Crie um novo repositório público
echo 3. 📤 Faça upload do arquivo: celulas3d-app-github.zip
echo 4. 🔄 GitHub Actions gerará o APK automaticamente
echo 5. 📱 Baixe o APK na seção "Releases"
echo.
echo 📖 Guia completo: README_GITHUB_MOBILE.md
echo.
echo ========================================
pause