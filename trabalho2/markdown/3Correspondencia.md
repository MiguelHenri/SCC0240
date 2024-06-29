# Correspondência
Correlação entre os atributos existentes nas tabelas geradas pelo mapeamento e pela carga de dados.
## Listings

| **Atributo em Listings**     | **Atributo em Propriedade**              |
| ------------------------ | ------------------------------------ |
| id                       | ID                                   |
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
