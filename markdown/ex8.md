# Exercício 8

Queremos o nome, a cidade e a quantidade de imóveis dos anfitriões que tiveram pelo menos três locações. Para isso, partindo da relação locação, em uma subquery, fazemos três JOIN: com a relação propriedades, anfitriões e usuários. Assim, podemos contar o número de imóveis de cada anfitrião usando a função COUNT, junto com a cláusula GROUP BY. Na query principal, obtemos os dados desejados utilizando a cláusula WHERE, onde o número de locações é maior ou igual a três.

<table>
    <thead>
        <tr>
            <th>nomeanfitriao</th>
            <th>cidade</th>
            <th>númeropropriedades</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Maria</td>
            <td>Florianópolis</td>
            <td>5</td>
        </tr>
        <tr>
            <td>Laura</td>
            <td>Aracaju</td>
            <td>2</td>
        </tr>
    </tbody>
</table>