# Correspondência
Correlação entre os atributos existentes nas tabelas geradas pelo mapeamento e pela carga de dados.

## Listings
Para realizar a correspondência de Listings com Propriedades, precisamos entender quais são as chaves primárias de Listings. Inicialmente, vemos que **name, host_id** é um forte candidato. Porém, **name** possui um nome em constante mudança devido as avaliações. Assim, efetuamos um recorte na string a fim de torná-lo chave:

``` sql
UPDATE Listings 
SET name_ = CONCAT(
    SPLIT_PART(name_, '·', 1), 
    SPLIT_PART(name_, '·', 3),
    SPLIT_PART(name_, '·', 4), 
    SPLIT_PART(name_, '·', 5)
)
```

Dessa forma, `Condo in Rio de Janeiro · ★4.70 · 2 bedrooms · 2 beds · 1 bath` se transforma em `Condo in Rio de Janeiro 2 bedrooms 2 beds 1 bath` e a correspondência segue:

**
| **Atributo em Listings**     | **Atributo em Propriedade**              |
| ------------------------ | ------------------------------------ |
| id                       | NULL                                   |
| name                     | Nome                                 |
| host\_id                 | IDAnfitriao                          |
| neighbourhood\_group     | NULL                                 |
| neighbourhood            | (indiretamente)IDLocalização&#8594;Bairro |
| latitude                 | NULL                                 |
| longitude                | NULL                                 |
| room\_type               | CasaInteira                          |
| price                    | ValorDiaria                          |
| minimum\_nights          | MinNoites                            |
| maximum\_nights          | MaxNoites                            |
| number\_of\_reviews      | NULL                                 |
| last\_review             | NULL                                 |
| reviews\_per\_month      | NULL                                 |
| availability\_365        | NULL                                 |
| number\_of\_reviews\_ltm | NULL                                 |
| license                  | NULL                                 |

## Hosts

| **Atributo em Hosts**                  | **Correspondência em Usuários** |
| ---------------------------------- | --------------------------- |
| host\_id                           | ID                          |
| host\_name                         | nome                        |
| calculated\_host\_listings\_counts | NULL                        |

A maior parte dos atributos de usuários não têm correspondência com a tabela de hosts obtida pela normalização, justamente pela falta de atributos que foi necessário adicionar **id** a Host.

## Calendar

| **Atributo em Calendar** | **Correspondência em DatasDisponiveis** |
| -------------------- | ------------------------------------ |
| listing\_id          | IDPropriedade                        |
| date                 | data                                 |
| available            | se True                              |
| price                | NULL                                 |
| adjusted\_price      | NULL                                 |
| minimum\_nights      | NULL                                 |
| maximum\_nights      | NULL                                 |

Calendar só possui correspondência quando **available** é verdadeiro e é apenas em dois atributos, a modelagem a partir do enunciado não tem essa estrutura de dias diferentes com preços, noites mínimas e noites máximas diferentes.

## Reviews

| **Atributo em Reviews** | **Correspondência em Mensagem** |
| ------------------- | --------------------------- |
| listing\_id         | IDPropriedade               |
| date                | DataCriacao                 |

Todos os atributos que não foram colocados nas tabelas não tem correspondência entre eles, a exceção é **localização**, que pelo dataset ser exclusivo da cidade do Rio de Janeiro possui todos os atributos iguais, apenas variando o bairro.
