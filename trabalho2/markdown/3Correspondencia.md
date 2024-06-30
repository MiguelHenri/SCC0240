# Correspondência
Correlação entre os atributos existentes nas tabelas geradas pelo mapeamento e pela carga de dados.

## Listings
A tabela Listings armazena anúncios de Propriedades no Airbnb. Assim, ela armazena diversas informações que serão correspondentes a Propriedades e Usuários, mas não diretamente a nenhuma dessas relações.

Para mapear a relação precisamos entender quais são as chaves primárias de Listings. Inicialmente, vemos que **name, host_id** é um forte candidato. Porém, **name** possui um nome em constante mudança devido as avaliações. Assim, efetuamos um recorte na string a fim de torná-lo chave:

``` sql
UPDATE Listings
SET name_ = CONCAT(
    SPLIT_PART(name_, '·', 1),
    SPLIT_PART(name_, '·', 3),
    SPLIT_PART(name_, '·', 4),
    SPLIT_PART(name_, '·', 5)
)
```

Dessa forma, `Condo in Rio de Janeiro · *4.70 · 2 bedrooms · 2 beds · 1 bath` se transforma em `Condo in Rio de Janeiro 2 bedrooms 2 beds 1 bath` e podemos criar uma tabela em SQL para Listings. 


Para mapear as informações pra propriedade, será usado as duas relação oriundas de Listings original:

| **Atributo em Property** | **Atributo em Propriedade**          |
| ------------------------ | ------------------------------------ |
| name                     | Nome                                 |
| host\_id                 | IDAnfitriao                          |
| neighbourhood\_group     | NULL                                 |
| neighbourhood            | (indiretamente)IDLocalização&#8594;Bairro |
| latitude                 | NULL                                 |
| longitude                | NULL                                 |
| room\_type               | CasaInteira                          |
| number\_of\_reviews      | NULL                                 |
| last\_review             | NULL                                 |
| reviews\_per\_month      | NULL                                 |
| number\_of\_reviews\_ltm | NULL                                 |
| license                  | NULL                                 |

| **Atributo em Listings** | **Atributo em Propriedade**              |
| ------------------------ | ------------------------------------ |
| id                       | NULL                                   |
| name                     | Nome                                 |
| host\_id                 | IDAnfitriao                          |
| price                    | ValorDiaria                          |
| minimum\_nights          | MinNoites                            |
| availability\_365        | NULL                                 |

## Hosts

| **Atributo em Hosts**                  | **Correspondência em Usuários** |
| ---------------------------------- | --------------------------- |
| host\_id                           | ID                          |
| host\_name                         | nome                        |
| calculated\_host\_listings\_counts | NULL                        |

A maior parte dos atributos de usuários não têm correspondência com a tabela de hosts obtida pela normalização, justamente pela falta de atributos que foi necessário adicionar **ID** a Usuários.

## Calendar
Calendar só possui correspondência quando **available** é verdadeiro. A correspondência ocorre apenas em dois atributos.

| **Atributo em Calendar** | **Correspondência em DatasDisponiveis** |
| -------------------- | ------------------------------------ |
| listing\_id          | IDPropriedade                        |
| date                 | data                                 |
| available            | se True                              |
| price                | NULL                                 |
| adjusted\_price      | NULL                                 |
| minimum\_nights      | NULL                                 |
| maximum\_nights      | NULL                                 |



## Reviews

| **Atributo em Reviews** | **Correspondência em Mensagem** |
| ------------------- | --------------------------- |
| listing\_id         | IDPropriedade               |
| date                | DataCriacao                 |

Todos os atributos que não foram colocados nas tabelas não tem correspondência entre eles, a exceção é **localização**, que pelo dataset ser exclusivo da cidade do Rio de Janeiro possui todos os atributos iguais, apenas variando o bairro.
