# Exercício 8

Criamos uma consulta para buscar os dados dos anfitriões que possuem pelo menos 3 propriedades listadas. Fazemos um JOIN entre a tabelas Usuarios, Localizacoes, e Propriedades, com base nos ID's. A cláusula GROUP BY agrupa os resultados pelo ID, nome do usuário, e cidade da localização. A cláusula HAVING filtra para exibir apenas os anfitriões com pelo menos 3 propriedades. Finalmente, os resultados são ordenados (ORDER BY) pela quantidade de propriedades em ordem decrescente. Segue, truncado até 10:

| **id**    | **nome**      | **cidade**     | **quantidadedeimoveis** |
|-----------|---------------|----------------|-------------------------|
| 91654021  | Daniel        | Rio de Janeiro | 2198                    |
| 371026651 | Pineapples    | Rio de Janeiro | 1664                    |
| 1982737   | Estadia       | Rio de Janeiro | 1420                    |
| 341887136 | Tabas         | Rio de Janeiro | 1305                    |
| 6000862   | Omar Do Rio   | Rio de Janeiro | 1295                    |
| 30165706  | Yes Temporada | Rio de Janeiro | 1232                    |
| 47584281  | Renato        | Rio de Janeiro | 1136                    |
| 12909867  | Giovanni      | Rio de Janeiro | 690                     |
| 14315601  | Aroldo        | Rio de Janeiro | 680                     |
| 310319158 | Suellen       | Rio de Janeiro | 560                     |


Além disso, criamos um índice na coluna IDAnfitriao da tabela Propriedades (antes dropamos caso exista). Este índice é criado para melhorar o desempenho da consulta, que utiliza essa coluna no JOIN. Isso é útil em tabelas com muitos registros. Utilizamos o comando EXPLAIN ANALYZE para analisar os tempos de execução das consultas após a criação do índice e verificar sua eficácia.

Sem índice: 
- Planning Time: 0.361 ms
- Execution Time: 244.775 ms

Com índice:
- Planning Time: 3.504 ms
- Execution Time: 166.159 ms
       