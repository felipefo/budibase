# Processo de instalação do budibase com mysql e phpmyadmin 
Este tutorial descreve o processo para instalar o budibase com uma imagem única do docker, o mysql e a cliente de banco de dados phpmyadmin

## Instação do docker
 Pré-requisito 
 ### Windows 
  Instale o Aplicativo Docker Desktop
 ### Linux 
  Instale o docker e o docker compose

# Baixando o código para rodar o budibase, mysql e phpmyadmin
  ## Baixe os  seguintes arquivos:
  1. [Docker-compose](https://raw.githubusercontent.com/felipefo/budibase/main/docker-compose.yaml)
  2. [.env](https://raw.githubusercontent.com/felipefo/budibase/main/.env)
  3. [Inventario.sql](https://raw.githubusercontent.com/felipefo/budibase/main/inventario.sql)

  ## Iniciando as imagens 
  1. Coloque os arquivos dentro de uma pasta
  2. Rode o comando:    
     ``` docker-compose up -d ```    
     Este comando inicia as imagens do docker iniciando  o budibase, o mysql e o phpmyadmin
  3. Acesse por meio do navegador os seguintes links:
     1.  [http://localhost:10000](http://localhost:10000)
     2. [http://localhost:8081](http://localhost:8081)
     


