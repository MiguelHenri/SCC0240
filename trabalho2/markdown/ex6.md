# Exercício 6
Aqui, temos três consultas. 

A primeira consulta tem como objetivo selecionar aleatoriamente 10 registros da tabela Propriedades. Isso é alcançado utilizando a função RANDOM() para ordenar os registros de forma aleatória e limitando o resultado para 10 linhas com LIMIT 10.

![query_propriedades](markdown/ex6.png)

A segunda consulta tem como objetivo agrupar as propriedades da tabela Propriedades de acordo com classes. A cláusula CASE é usada para categorizar os valores de mínimo de noites em diferentes classes: '1', '2', '3', '4' e '5 ou mais'. Em seguida, conta-se o número de propriedades em cada classe usando COUNT(*), e os resultados são ordenados na cláusula ORDER BY.

<table>
    <thead>
        <tr>
            <th>minnoites</th>
            <th>numpropriedades</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>9243</td>
        </tr>
        <tr>
            <td>2</td>
            <td>10443</td>
        </tr>
        <tr>
            <td>3</td>
            <td>7858</td>
        </tr>
        <tr>
            <td>4</td>
            <td>2883</td>
        </tr>
        <tr>
            <td>5 ou mais</td>
            <td>5581</td>
        </tr>
    </tbody>
</table>

A terceira consulta visa contar o número total de registros na tabela Localizacoes. Utilizamos a função COUNT(*).

<table>
    <thead>
        <tr>
            <th>numerolocalizacoes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>156</td>
        </tr>
    </tbody>
</table>