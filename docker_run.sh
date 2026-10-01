#!/bin/bash
# Script para executar o container Docker com suporte a X11
docker run -it -d --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  x11-docker:u2404 xeyes

# -it : Permite interação com o terminal do container
# -d : Executa o container em modo detached (em segundo plano)
# --rm : Remove o container após a execução
# -e DISPLAY=$DISPLAY : Passa a variável de ambiente DISPLAY para o container
# -v /tmp/.X11-unix:/tmp/.X11-unix : Monta o socket do X11 para permitir a comunicação entre o host e o container
# x11-docker:u2404 : Nome da imagem Docker que será utilizada
# xeyes : Comando para executar o aplicativo X11 (neste caso, xeyes) dentro do container