# Exercício 8

Queremos o nome, a cidade e a quantidade de imóveis dos anfitriões que tiveram pelo menos três locações. Para isso, fazemos uma subquery que inclui o Nome do Anfitrião, da Propriedade, Cidade e Número de Locações através de JOIN e GROUP BY com as tabelas de Usuários, Propriedades e Anfitrioes. Em seguida, realizamos uma query no resultado obtido para selecionar o Nome do Anfitrião, sua cidade, contagem do número de propriedades. Nesse passo também filtramos pelo número de locações >= 3 e agrupamos pelas colunas restantes (Nome do Anfitrião e Cidade), obtendo o resultado desejado.


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