# Dockerfile para executar aplicativos X11 em um container Docker

# Baseado na imagem oficial do Ubuntu 24.04
FROM ubuntu:24.04

# Evita perguntas interativas durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Instala atualizações e aplicativos X11 básicos
RUN apt-get update && apt-get install -y \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Define o comando padrão para iniciar o container
CMD ["/bin/bash"]