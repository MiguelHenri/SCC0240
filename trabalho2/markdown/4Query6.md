# Exercício 6

Aqui, temos três consultas. 

A primeira consulta tem como objetivo selecionar aleatoriamente 10 registros da tabela Propriedades. Isso é alcançado utilizando a função RANDOM() para ordenar os registros de forma aleatória e limitando o resultado para 10 linhas com LIMIT 10.

![query_propriedades](markdown/ex6.png)

A segunda consulta tem como objetivo agrupar as propriedades da tabela Propriedades de acordo com classes. A cláusula CASE é usada para categorizar os valores de mínimo de noites em diferentes classes: '1', '2', '3', '4' e '5 ou mais'. Em seguida, conta-se o número de propriedades em cada classe usando COUNT(*), e os resultados são ordenados na cláusula ORDER BY.

| **minnoites** | **numpropriedades** |
|---------------|---------------------|
| 1             | 8008                |
| 2             | 9390                |
| 3             | 7235                |
| 4             | 2674                |
| 5 ou mais     | 5212                |

A terceira consulta visa contar o número total de registros na tabela Localizacoes. Utilizamos a função COUNT(*):

| **numerolocalizacoes** |
|-----------------------|
|          156          |