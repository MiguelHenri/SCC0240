# Exercício 7

Primeiro, criamos visão chamada PropriedadesDisponiveis que contém todas as propriedades disponíveis durante o ano de 2024, junto com as datas específicas em que estão disponíveis. Usamos CREATE OR REPLACE VIEW, que substitui a visão se ela já existir ou a cria se não existir. A seleção de dados é feita a partir das tabelas Propriedades e DatasDisponiveis, onde há um JOIN entre elas baseado nos IDs equivalentes. A cláusula WHERE filtra apenas as datas de 2024.

Depois, realizamos uma consulta na visão para calcular o preço médio das diárias por mês. Utiliza-se a função EXTRACT para extrair o mês da data. A função AVG calcula a média dos valores presentes na coluna PrecoDiaria. O resultado é agrupado por mês utilizando a cláusula GROUP BY, e os resultados são ordenados pelo mês com a cláusula ORDER BY.

| **mes** | **precomedio**     |
|---------|--------------------|
| 1.0     | 1329.1753055440604 |
| 2.0     | 1323.7826720229286 |
| 3.0     | 1242.4417729409627 |
| 4.0     | 1290.4259413334337 |
| 5.0     | 1286.8790061012612 |
| 6.0     | 1298.3419265975792 |
| 7.0     | 1354.2343028632836 |
| 8.0     | 1357.2291659674443 |
| 9.0     | 1378.3846521373125 |
| 10.0    | 1441.7579053498966 |
| 11.0    | 1434.3198859215672 |
| 12.0    | 1404.391295106963  |

