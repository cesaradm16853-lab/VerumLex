@echo off
echo Iniciando servidor local do VerumLex...
echo.
echo O site sera aberto no seu navegador padrao.
echo Para encerrar, feche esta janela.
echo.
start "" "http://localhost:8000"
python -m http.server 8000
pause
