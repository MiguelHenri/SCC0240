# Exercício 7

Primeiro, criamos visão chamada PropriedadesDisponiveis que contém todas as propriedades disponíveis durante o ano de 2024, junto com as datas específicas em que estão disponíveis. Usamos CREATE OR REPLACE VIEW, que substitui a visão se ela já existir ou a cria se não existir. A seleção de dados é feita a partir das tabelas Propriedades e DatasDisponiveis, onde há um JOIN entre elas baseado nos IDs equivalentes. A cláusula WHERE filtra apenas as datas de 2024.

Depois, realizamos uma consulta na visão para calcular o preço médio das diárias por mês. Utiliza-se a função EXTRACT para extrair o mês da data. A função AVG calcula a média dos valores presentes na coluna PrecoDiaria. O resultado é agrupado por mês utilizando a cláusula GROUP BY, e os resultados são ordenados pelo mês com a cláusula ORDER BY:

| **mes** | **precomedio** |
|---------|----------------|
| 1.0     | 1340.9947690174577 |
| 2.0     | 1336.956078758397  |
| 3.0     | 1252.009881718175  |
| 4.0     | 1297.3154039455223 |
| 5.0     | 1291.2594455291928 |
| 6.0     | 1301.0582977855458 |
| 7.0     | 1360.7305691696188 |
| 8.0     | 1363.7079832535787 |
| 9.0     | 1383.6694099826725 |
| 10.0    | 1443.2146198132302 |
| 11.0    | 1436.4975684948815 |
| 12.0    | 1406.9930366870558 |