# 🌐 Windows Network Cleaner

Este é um script simples desenvolvido para limpar o cache de rede e restaurar os protocolos de conexão do Windows. Ele ajuda a resolver problemas de lentidão na internet (mesmo em conexões de alta velocidade como 1 Gbps) causados pelo acúmulo de dados temporários de navegação e streaming.

## 🚀 O que este script faz?
1. **Limpa o cache DNS:** Remove o "mapa" antigo de sites guardado no PC.
2. **Reseta o catálogo Winsock:** Organiza a fila de programas que pedem acesso à internet.
3. **Reseta a pilha TCP/IP:** Reinicia as configurações fundamentais de tráfego do sistema.

## 💻 Como criar e usar o script no seu PC

1. Na sua área de trabalho, clique com o botão direito, vá em **Novo** e selecione **Documento de Texto**.
2. Abra o arquivo criado e cole o código abaixo dentro dele:

```cmd
@echo off
echo Limpando cache DNS...
ipconfig /flushdns

echo Resetando catalogo Winsock...
netsh winsock reset

echo Resetando pilha TCP/IP...
netsh int ip reset

echo Concluido! Reinicie o computador para aplicar as alteracoes.
pause
```

3. Clique em **Arquivo** > **Salvar como...**
4. Mude o nome do arquivo para `limpar_rede.bat` e, no campo abaixo (*Tipo*), mude para **Todos os arquivos (*.*)**. Salve o arquivo.
5. Clique com o botão direito em cima do arquivo `limpar_rede.bat` gerado e escolha **Executar como Administrador**.
6. Reinicie o seu computador.

⚠️ **Nota para ambiente corporativo:** Se estiver usando um computador de empresa, este script não irá funcionar sem a senha do administrador da equipe de TI.
