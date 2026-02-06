@echo off
title Configurar GitHub - VerumLex
color 0A
cls
echo ========================================================
echo        SUBIR SITE E ATUALIZACOES PARA O GITHUB
echo ========================================================
echo.
echo ESTADO ATUAL:
echo Os arquivos ja estao prontos e commitados localmente.
echo (Incluindo o executavel v2.04 e o site novo)
echo.
echo PASSO A PASSO:
echo 1. Acesse https://github.com/new
echo 2. Crie um repositorio chamado: verumlex-site
echo 3. Nao marque "Add README" ou "gitignore" (deixe vazio)
echo 4. Copie o link HTTPS do repositorio criado.
echo.
echo --------------------------------------------------------
set /p REPO_URL="COLE O LINK HTTPS AQUI: "

if "%REPO_URL%"=="" goto erro

echo.
echo Conectando ao GitHub...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
echo.
echo Enviando arquivos (pode demorar devido ao executavel de 80MB)...
git branch -M main
git push -u origin main

if %errorlevel% neq 0 (
    color 0C
    echo.
    echo [ERRO] Nao foi possivel enviar. Verifique se voce esta logado no Git.
    echo Se pedir senha, use seu "Personal Access Token".
    pause
    exit
)

color 0A
echo.
echo ========================================================
echo SUCESSO! SEU SITE ESTA NO AR (QUASE).
echo.
echo AGORA ATIVE O GITHUB PAGES:
echo 1. Va em Settings > Pages no seu repositorio GitHub.
echo 2. Em "Source", escolha "Deploy from a branch".
echo 3. Em "Branch", selecione "main" e "/ (root)".
echo 4. Clique em Save.
echo.
echo (Opcional) Em "Custom domain", coloque: verumlexpericias.com.br
echo E configure o DNS (CNAME) no seu registrador de dominio.
echo ========================================================
pause
exit

:erro
echo Link invalido. Tente novamente.
pause
goto start
