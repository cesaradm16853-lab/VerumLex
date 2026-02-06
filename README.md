# VerumLex Website & Update Server

Este repositório hospeda o site oficial e os arquivos de atualização do **VerumLex**.

## Estrutura

- `index.html`: Landing page.
- `assets/`: Estilos e imagens.
- `update/`: Contém o binário mais recente (`VerumLex_Setup.exe`) e o arquivo de controle de versão (`version.json`).

## Como Atualizar

1. Gere o novo executável com PyInstaller.
2. Copie para a pasta `update` renomeando para `VerumLex_Setup.exe`.
3. Atualize o número da versão em `update/version.json`.
4. Faça commit e push para o GitHub.
