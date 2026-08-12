# 🌐 Windows Network Cleaner

Este é um script simples desenvolvido para limpar o cache de rede e restaurar os protocolos de conexão do Windows. Ele ajuda a resolver problemas de lentidão na internet (mesmo em conexões de alta velocidade como 1 Gbps) causados pelo acúmulo de dados temporários de navegação e streaming.

## 🚀 O que este script faz?
1. **Limpa o cache DNS:** Remove o "mapa" antigo de sites guardado no PC.
2. **Reseta o catálogo Winsock:** Organiza a fila de programas que pedem acesso à internet.
3. **Reseta a pilha TCP/IP:** Reinicia as configurações fundamentais de tráfego do sistema.

## 💻 Como criar e usar o script no seu PC

1. Na sua área de trabalho, clique com o botão direito, vá em **Novo** e selecione **Documento de Texto**.
2. Abra o arquivo criado e cole o código abaixo dentro dele:

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

3. Clique em **Arquivo** > **Salvar como...**
4. Mude o nome do arquivo para `limpar_rede.bat` e, no campo abaixo (*Tipo*), mude para **Todos os arquivos (*.*)**. Salve o arquivo.
5. Clique com o botão direito em cima do arquivo `limpar_rede.bat` gerado e escolha **Executar como Administrador**.
6. Reinicie o seu computador.

⚠️ **Nota para ambiente corporativo:** Se estiver usando um computador de empresa, este script não irá funcionar sem a senha do administrador da equipe de TI.
