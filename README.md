## Container c/ PHP 7.4 e xDebug (instalado via entrypoint.sh)
#### Disclaimer: Esse repositório foi criado apenas para ajudar um colega. Pode ser útil para o aprendizado sobre docker e entrypoints, php, apache, etc...

A ideia central era utilizar a imagem do PHP 5.7-apache e instalar o xDebug, descartando a alternativa de criação de Dockerfile. Com essa condição, foi feita a instalação do xDebug via entrypoint.

Para iniciar, execute o comando `docker-compose up -d`

#
## Docker + Windows + VS Code
Para utilizar no Windows 10 com VS Code é necessário instalar a extensão PHP Debug Adapter for Visual Studio Code. Neste repositório inclui também a pasta .vscode/ com o arquivo de configuração. 

É importante verificar o VS Code já cria uma configuração básica, que foi alterada para incluir o código a seguir:

```
    "pathMappings": {
        "/var/www/html": "${workspaceFolder}/"
    }
```

## Ficando da seguinte forma:
### .vscode/launch.json
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug",
            "type": "php",
            "request": "launch",
            "port": 9000,
            "pathMappings": {
                "/var/www/html": "${workspaceFolder}/"
            }
        }
    ]
}
```

