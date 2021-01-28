# 🔝 top5-mysql

`Top5` - banco de dados de exemplo em MySQL.

Contém um cadastro de listas do tipo _top 5_ e contagem de curtidas (_likes_).

## Como carregar

Usando o MySQL Workbench, selecione _File_, _Run Script SQL..._.

![](assets/run-01.png)

Selecione o arquivo desejado:

* Somente estrutura, em [`scripts/top5.production.sql`](scripts/top5.production.sql)
* Estrutura e dados de exemplo, em [`scripts/top5.sql`](scripts/top5.sql)

Selecione o conjunto de caracteres `utf8` e execute clicando em _Run_.

![](assets/run-02.png)

_Se preferir, você pode usar outro cliente, como o DBeaver, por exemplo._

## Carregando com Docker

#### Utilizando a imagem disponível no Docker Hub

```
docker run -p xxxx:3306 -e MYSQL_ROOT_PASSWORD=yyyy ermogenes/top5-mysql
```

Substitua `xxxx` pela porta de acesso desejada, e `yyyy` pela senha desejada para o usuário `root`.

#### Construindo a partir do `Dockerfile` local

```
docker build -t top5-mysql-local .
docker run -p xxxx:3306 -e MYSQL_ROOT_PASSWORD=yyyy top5-mysql-local
```

#### Subindo juntamente com o Adminer, usando o Docker Compose

```
docker-compose up
```

* Adminer em http://localhost:8080
* MySQL em `33306`
* Usuário `root`, senha `secret`

## Modelo de dados

Arquivo do MySQL Workbench: [`model/top5.mwb`](model/top5.mwb)

**Diagrama Entidade-Relacionamento**

![](assets/top5.png)
