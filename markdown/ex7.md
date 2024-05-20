# Exercício 7

Aqui, queremos o valor médio das diárias das locações confirmadas para cada mês. Na query, extraímos a coluna MONTH da data de check-in da relação locação. Em seguida, obtemos o valor médio das diárias utilizando a função AVG nos preços da diária. Para isso, fizemos um JOIN da relação de locações com a relação de propriedades. Por fim, utilizamos a cláusula GROUP BY no mês, para indicar à função AVG que a média deve ser calculada para cada mês. Utilizamos também a cláusula ORDER BY, para ordenar por mês.

<table>
    <thead>
        <tr>
            <th>mes</th>
            <th>mediadiaria</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>245.0</td>
        </tr>
        <tr>
            <td>3</td>
            <td>273.3333333333333</td>
        </tr>
        <tr>
            <td>4</td>
            <td>252.0</td>
        </tr>
        <tr>
            <td>5</td>
            <td>232.0</td>
        </tr>
        <tr>
            <td>6</td>
            <td>180.0</td>
        </tr>
    </tbody>
</table>