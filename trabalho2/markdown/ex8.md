# Exercício 8
Criamos uma consulta para buscar os dados dos anfitriões que possuem pelo menos 3 propriedades listadas. Fazemos um JOIN entre a tabelas Usuarios, Localizacoes, e Propriedades, com base nos ID's. A cláusula GROUP BY agrupa os resultados pelo ID, nome do usuário, e cidade da localização. A cláusula HAVING filtra para exibir apenas os anfitriões com pelo menos 3 propriedades. Finalmente, os resultados são ordenados (ORDER BY) pela quantidade de propriedades em ordem decrescente. Segue, truncado até 10:

<table>
    <thead>
        <tr>
            <th>id</th>
            <th>nome</th>
            <th>cidade</th>
            <th>quantidadedeimoveis</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>91654021</td>
            <td>Daniel</td>
            <td>Rio de Janeiro</td>
            <td>2198</td>
        </tr>
        <tr>
            <td>371026651</td>
            <td>Pineapples</td>
            <td>Rio de Janeiro</td>
            <td>1664</td>
        </tr>
        <tr>
            <td>1982737</td>
            <td>Estadia</td>
            <td>Rio de Janeiro</td>
            <td>1420</td>
        </tr>
        <tr>
            <td>341887136</td>
            <td>Tabas</td>
            <td>Rio de Janeiro</td>
            <td>1305</td>
        </tr>
        <tr>
            <td>6000862</td>
            <td>Omar Do Rio</td>
            <td>Rio de Janeiro</td>
            <td>1295</td>
        </tr>
        <tr>
            <td>30165706</td>
            <td>Yes Temporada</td>
            <td>Rio de Janeiro</td>
            <td>1232</td>
        </tr>
        <tr>
            <td>47584281</td>
            <td>Renato</td>
            <td>Rio de Janeiro</td>
            <td>1136</td>
        </tr>
        <tr>
            <td>12909867</td>
            <td>Giovanni</td>
            <td>Rio de Janeiro</td>
            <td>690</td>
        </tr>
        <tr>
            <td>14315601</td>
            <td>Aroldo</td>
            <td>Rio de Janeiro</td>
            <td>680</td>
        </tr>
        <tr>
            <td>310319158</td>
            <td>Suellen</td>
            <td>Rio de Janeiro</td>
            <td>560</td>
        </tr>
    </tbody>
</table>

Além disso, criamos um índice na coluna IDAnfitriao da tabela Propriedades (antes dropamos caso exista). Este índice é criado para melhorar o desempenho da consulta, que utiliza essa coluna no JOIN. Isso é útil em tabelas com muitos registros. Utilizamos o comando EXPLAIN ANALYZE para analisar os tempos de execução das consultas após a criação do índice e verificar sua eficácia.

Sem índice: 
- Planning Time: 0.361 ms
- Execution Time: 244.775 ms

Com índice:
- Planning Time: 3.504 ms
- Execution Time: 166.159 ms
       