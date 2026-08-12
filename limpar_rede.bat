@echo off
cls
echo ===================================================
echo           OTIMIZADOR DE CONEXAO WINDOWS            
echo ===================================================
echo.
echo Este script executara as seguintes tarefas de rede:
echo 1) Limpeza do cache DNS
echo 2) Reset do catalogo Winsock
echo 3) Reset da pilha TCP/IP
echo.
echo IMPORTANTE: O computador precisara ser reiniciado.
echo ===================================================
echo.

:pergunta
set /p resposta=Deseja prosseguir com a limpeza? (S/N): 

if /i "%resposta%"=="S" goto executar
if /i "%resposta%"=="N" goto cancelar

echo Opcao invalida. Digite S para Sim ou N para Nao.
echo.
goto pergunta

:executar
echo.
echo [1/3] Limpando cache DNS...
ipconfig /flushdns
echo.
echo [2/3] Resetando catalogo Winsock...
netsh winsock reset
echo.
echo [3/3] Resetando pilha TCP/IP...
netsh int ip reset
echo.
echo ===================================================
echo Processo concluido com sucesso!
echo Por favor, REINICIE o seu computador agora.
echo ===================================================
pause
exit

:cancelar
echo.
echo Operacao cancelada pelo usuario. Nenhuma alteracao foi feita.
echo.
pause
exit
