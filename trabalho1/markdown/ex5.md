# Exercício 5
Aqui, temos seis consultas. A primeira consulta mostra a relação inteira de propriedades. Isso é feito utilizando a cláusula SELECT *.

![query_propriedades](markdown/ex5.png)

As consultas de dois até cinco mostram a quantidade de propriedades de cada classe. 
- A primeira classe é casa inteira ou quarto; 
<table>
    <thead>
        <tr>
            <th>casainteira</th>
            <th>quantidade</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>False</td>
            <td>8</td>
        </tr>
        <tr>
            <td>True</td>
            <td>12</td>
        </tr>
    </tbody>
</table>

- a segunda é o número de quartos; 
<table>
    <thead>
        <tr>
            <th>nquartos</th>
            <th>quantidade</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>4</td>
            <td>3</td>
        </tr>
        <tr>
            <td>2</td>
            <td>6</td>
        </tr>
        <tr>
            <td>3</td>
            <td>6</td>
        </tr>
        <tr>
            <td>1</td>
            <td>5</td>
        </tr>
    </tbody>
</table>

- a terceira é o número de banheiros; 
<table>
    <thead>
        <tr>
            <th>nbanheiros</th>
            <th>quantidade</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>6</td>
        </tr>
        <tr>
            <td>3</td>
            <td>3</td>
        </tr>
        <tr>
            <td>1</td>
            <td>11</td>
        </tr>
    </tbody>
</table>

- a quarta é o intervalo de preço da diária.
<table>
    <thead>
        <tr>
            <th>classepreco</th>
            <th>numeropropriedades</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Classe A</td>
            <td>2</td>
        </tr>
        <tr>
            <td>Classe B</td>
            <td>14</td>
        </tr>
        <tr>
            <td>Classe C</td>
            <td>4</td>
        </tr>
    </tbody>
</table>

Finalmente, a última consulta mostra quantas propriedades existem de cada cidade. Isso é feito utilizando a função COUNT agrupando as propriedades por cidade (GROUP BY) em um JOIN da relação de propriedades e localizações.
<table>
    <thead>
        <tr>
            <th>cidade</th>
            <th>npropriedades</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Porto Alegre</td>
            <td>8</td>
        </tr>
        <tr>
            <td>Florianópolis</td>
            <td>3</td>
        </tr>
        <tr>
            <td>Manaus</td>
            <td>3</td>
        </tr>
        <tr>
            <td>Vitória</td>
            <td>3</td>
        </tr>
        <tr>
            <td>Goiânia</td>
            <td>3</td>
        </tr>
    </tbody>
</table>
