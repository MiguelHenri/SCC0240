# Exercício 8

Criamos uma consulta para buscar os dados dos anfitriões que possuem pelo menos 3 propriedades listadas. Fazemos um JOIN entre a tabelas Usuarios, Localizacoes, e Propriedades, com base nos ID's. A cláusula GROUP BY agrupa os resultados pelo ID, nome do usuário, e cidade da localização. A cláusula HAVING filtra para exibir apenas os anfitriões com pelo menos 3 propriedades. Finalmente, os resultados são ordenados (ORDER BY) pela quantidade de propriedades em ordem decrescente. Segue, truncado até 10:

| **id**    | **nome**            | **cidade**      | **quantidadedeimoveis** |
|-----------|---------------------|-----------------|--------------------------|
| 91654021  | Daniel              | Rio de Janeiro  | 104                      |
| 1982737   | Estadia             | Rio de Janeiro  | 78                       |
| 14315601  | Aroldo              | Rio de Janeiro  | 71                       |
| 47584281  | Renato              | Rio de Janeiro  | 68                       |
| 6000862   | Omar Do Rio         | Rio de Janeiro  | 66                       |
| 371026651 | Pineapples          | Rio de Janeiro  | 63                       |
| 341887136 | Tabas               | Rio de Janeiro  | 55                       |
| 12909867  | Giovanni            | Rio de Janeiro  | 47                       |
| 8975746   | Line Rio            | Rio de Janeiro  | 41                       |
| 74463624  | Mozart              | Rio de Janeiro  | 40                       |


Além disso, criamos um índice na coluna IDAnfitriao da tabela Propriedades (antes dropamos caso exista). Este índice é criado para melhorar o desempenho da consulta, que utiliza essa coluna no JOIN. Isso é útil em tabelas com muitos registros. Utilizamos o comando EXPLAIN ANALYZE para analisar os tempos de execução das consultas após a criação do índice e verificar sua eficácia.

Sem índice: 
- Planning Time: 0.673 ms
- Execution Time: 201.318 ms

Com índice:
- Planning Time: 5.568 ms
- Execution Time: 142.506 ms
       