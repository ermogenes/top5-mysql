# 🔝 top5-mysql

`Top5` - banco de dados de exemplo em MySQL.

Contém um cadastro de listas do tipo _top 5_ e contagem de curtidas (_likes_).

## Como carregar

Usando o MySQL Workbench, selecione _File_, _Run Script SQL..._.

![](assets/run-01.png)

Selecione o arquivo desejado:

* Somente estrutura, em [`scripts/top5.sql`](scripts/top5.sql)
* Estrutura e dados de exemplo, em [`scripts/top5.production.sql`](scripts/top5.production.sql)

Selecione o conjunto de caracteres `utf8` e execute clicando em _Run_.

![](assets/run-02.png)

_Se preferir, você pode usar outro cliente, como o DBeaver, por exemplo._

## Modelo de dados

Arquivo do MySQL Workbench: [`model/top5.mwb`](model/top5.mwb)

**Diagrama Entidade-Relacionamento**

![](assets/top5.png)