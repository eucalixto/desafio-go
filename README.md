# Desafio go

Criação de uma imagem com tamanho otimizado menos que 2M que ao ser executada imprime a mensagem  Code.education Rocks! usando a linguagem golang

## Estratégia 

Para cumprir o desafio foi necessário usar Multi-stage builds, que se trata em dividir a criação de sua imagem em estapas onde que a etapa n+1 utilza o que foi gerado na etapa n, para saber mais sobre o assunto consulte [aqui](https://docs.docker.com/build/building/multi-stage/).
Nesse projeto a primeira etapa copia o fonte para dentro de um container com Golang lá é feito a compilação do fonte.
Na segunda etapa é copiado o executável gerado para um nova imagem vazia "scratch" e depois é feito a execução do programa em go "printMessage" o resultado esperado é exibir a mensagem "Code.education Rocks!".

## Golang
O código go utilizado nesse projeto fica na pasta printMessage e somente exibe a mensagem "Code.education Rocks!"

## Docker
Nesse projeto foi criado foi criado um arquivo DockerFile que se encontra na raiz do projeto.
É possível alterar o fonte do Go sem a necessidade da instalação do Golang na máquina para isso use um container com Go e faça o bind com a pasta do projeto abaixo segue um exemplo de como fazer isso de dentro da pasta desafio-go.
```
docker run -it --rm -v $(pwd)/printMessage:/go/printMessage golang bash
```

## Dcoker hub
A imagem está disponível no Docker Hub [aqui](https://hub.docker.com/repository/docker/eucalixto/codeeducation)

Para executar a imagem executar o comando docker 
```
docker run eucalixto/codeeducation
```




