# Exercício 5
Aqui, temos seis consultas. A primeira consulta mostra a relação inteira de propriedades. Isso é feito utilizando a cláusula SELECT *.

<table>
    <thead>
        <tr>
            <th>id</th>
            <th>nome</th>
            <th>endereco</th>
            <th>idlocalizacao</th>
            <th>idproprietario</th>
            <th>nquartos</th>
            <th>nbanheiros</th>
            <th>precodiaria</th>
            <th>nhospedesmax</th>
            <th>nnoitesmin</th>
            <th>nnoitesmax</th>
            <th>precolimpeza</th>
            <th>horacheckin</th>
            <th>horacheckout</th>
            <th>regras</th>
            <th>comodidades</th>
            <th>casainteira</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Casa da Colina</td>
            <td>Rua das Flores, 321</td>
            <td>1</td>
            <td>1</td>
            <td>3</td>
            <td>2</td>
            <td>220.0</td>
            <td>6</td>
            <td>2</td>
            <td>7</td>
            <td>50.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Wi-Fi, Ar condicionado, Estacionamento gratuito</td>
            <td>True</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Apartamento Charmoso</td>
            <td>Av. das Árvores, 789</td>
            <td>2</td>
            <td>2</td>
            <td>2</td>
            <td>1</td>
            <td>280.0</td>
            <td>4</td>
            <td>1</td>
            <td>14</td>
            <td>60.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Proibido animais de estimação.</td>
            <td>Piscina, Academia, TV a cabo</td>
            <td>True</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Cabana na Floresta</td>
            <td>Estrada da Paz, 555</td>
            <td>3</td>
            <td>3</td>
            <td>1</td>
            <td>1</td>
            <td>180.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>30.0</td>
            <td>12:00:00</td>
            <td>10:00:00</td>
            <td>Check-in automático.</td>
            <td>Lareira, Trilhas para caminhadas, Cozinha rústica</td>
            <td>True</td>
        </tr>
        <tr>
            <td>4</td>
            <td>Sobrado Aconchegante</td>
            <td>Rua do Bosque, 456</td>
            <td>4</td>
            <td>4</td>
            <td>3</td>
            <td>2</td>
            <td>300.0</td>
            <td>8</td>
            <td>2</td>
            <td>10</td>
            <td>70.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Jardim, Churrasqueira, Sala de jogos</td>
            <td>False</td>
        </tr>
        <tr>
            <td>5</td>
            <td>Casa de Praia Relaxante</td>
            <td>Av. Beira Mar, 123</td>
            <td>5</td>
            <td>5</td>
            <td>4</td>
            <td>3</td>
            <td>400.0</td>
            <td>10</td>
            <td>3</td>
            <td>14</td>
            <td>80.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Check-in após as 15:00.</td>
            <td>Piscina, Chuveiro externo, Varanda com vista para o mar</td>
            <td>True</td>
        </tr>
        <tr>
            <td>6</td>
            <td>Apartamento Estilo Loft</td>
            <td>Rua da Liberdade, 1010</td>
            <td>1</td>
            <td>6</td>
            <td>2</td>
            <td>1</td>
            <td>200.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>40.0</td>
            <td>13:00:00</td>
            <td>10:00:00</td>
            <td>Proibido festas ou eventos.</td>
            <td>Wi-Fi, Ar condicionado, Cozinha moderna</td>
            <td>True</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Chalé Romântico</td>
            <td>Travessa do Amor, 222</td>
            <td>1</td>
            <td>7</td>
            <td>1</td>
            <td>1</td>
            <td>250.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>50.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Apenas para casais.</td>
            <td>Lareira, Banheira de hidromassagem, Vista panorâmica</td>
            <td>True</td>
        </tr>
        <tr>
            <td>8</td>
            <td>Casa de Campo Tradicional</td>
            <td>Estrada do Interior, 999</td>
            <td>3</td>
            <td>8</td>
            <td>3</td>
            <td>2</td>
            <td>280.0</td>
            <td>6</td>
            <td>2</td>
            <td>10</td>
            <td>60.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Jardim, Churrasqueira, Cozinha completa</td>
            <td>True</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Apartamento Moderno</td>
            <td>Av. das Indústrias, 555</td>
            <td>2</td>
            <td>9</td>
            <td>2</td>
            <td>1</td>
            <td>300.0</td>
            <td>4</td>
            <td>1</td>
            <td>14</td>
            <td>70.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Proibido animais de estimação.</td>
            <td>Wi-Fi, Academia, Estacionamento privativo</td>
            <td>True</td>
        </tr>
        <tr>
            <td>10</td>
            <td>Cabana à Beira do Rio</td>
            <td>Estrada do Rio, 777</td>
            <td>1</td>
            <td>10</td>
            <td>1</td>
            <td>1</td>
            <td>180.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>40.0</td>
            <td>12:00:00</td>
            <td>10:00:00</td>
            <td>Check-in automático.</td>
            <td>Rio particular, Deck privativo, Churrasqueira</td>
            <td>False</td>
        </tr>
        <tr>
            <td>11</td>
            <td>Sobrado Familiar</td>
            <td>Rua dos Sonhos, 789</td>
            <td>4</td>
            <td>1</td>
            <td>3</td>
            <td>2</td>
            <td>320.0</td>
            <td>8</td>
            <td>2</td>
            <td>14</td>
            <td>80.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Pátio com jardim, Churrasqueira, Sala de jogos</td>
            <td>False</td>
        </tr>
        <tr>
            <td>12</td>
            <td>Casa de Praia Relaxante</td>
            <td>Av. do Sol, 456</td>
            <td>5</td>
            <td>1</td>
            <td>4</td>
            <td>3</td>
            <td>420.0</td>
            <td>10</td>
            <td>3</td>
            <td>14</td>
            <td>90.0</td>
            <td>16:00:00</td>
            <td>12:00:00</td>
            <td>Check-in após as 16:00.</td>
            <td>Piscina, Chuveiro externo, Varanda com vista para o mar</td>
            <td>False</td>
        </tr>
        <tr>
            <td>13</td>
            <td>Loft Urbano</td>
            <td>Rua das Ruas, 1010</td>
            <td>1</td>
            <td>1</td>
            <td>2</td>
            <td>1</td>
            <td>220.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>50.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Proibido festas ou eventos.</td>
            <td>Wi-Fi, Ar condicionado, Cozinha americana</td>
            <td>False</td>
        </tr>
        <tr>
            <td>14</td>
            <td>Chalé da Serra</td>
            <td>Travessa da Serra, 222</td>
            <td>1</td>
            <td>2</td>
            <td>1</td>
            <td>1</td>
            <td>260.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>60.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Apenas para casais.</td>
            <td>Lareira, Banheira de hidromassagem, Vista panorâmica</td>
            <td>False</td>
        </tr>
        <tr>
            <td>15</td>
            <td>Casa de Campo Acolhedora</td>
            <td>Estrada da Tranquilidade, 999</td>
            <td>3</td>
            <td>2</td>
            <td>3</td>
            <td>2</td>
            <td>300.0</td>
            <td>6</td>
            <td>2</td>
            <td>10</td>
            <td>70.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Jardim, Churrasqueira, Cozinha completa</td>
            <td>True</td>
        </tr>
        <tr>
            <td>16</td>
            <td>Apartamento de Luxo</td>
            <td>Av. do Luxo, 555</td>
            <td>2</td>
            <td>6</td>
            <td>2</td>
            <td>1</td>
            <td>350.0</td>
            <td>4</td>
            <td>1</td>
            <td>14</td>
            <td>80.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Proibido animais de estimação.</td>
            <td>Wi-Fi, Academia, Estacionamento privativo</td>
            <td>True</td>
        </tr>
        <tr>
            <td>17</td>
            <td>Cabana à Beira do Riacho</td>
            <td>Estrada do Riacho, 777</td>
            <td>1</td>
            <td>2</td>
            <td>1</td>
            <td>1</td>
            <td>200.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>50.0</td>
            <td>12:00:00</td>
            <td>10:00:00</td>
            <td>Check-in automático.</td>
            <td>Riacho particular, Deck privativo, Churrasqueira</td>
            <td>False</td>
        </tr>
        <tr>
            <td>18</td>
            <td>Sobrado Confortável</td>
            <td>Rua dos Sonhos, 789</td>
            <td>4</td>
            <td>2</td>
            <td>3</td>
            <td>2</td>
            <td>340.0</td>
            <td>8</td>
            <td>2</td>
            <td>14</td>
            <td>90.0</td>
            <td>15:00:00</td>
            <td>11:00:00</td>
            <td>Não é permitido fumar dentro da casa.</td>
            <td>Pátio com jardim, Churrasqueira, Sala de jogos</td>
            <td>False</td>
        </tr>
        <tr>
            <td>19</td>
            <td>Casa de Praia Exclusiva</td>
            <td>Av. do Sol, 456</td>
            <td>5</td>
            <td>9</td>
            <td>4</td>
            <td>3</td>
            <td>450.0</td>
            <td>10</td>
            <td>3</td>
            <td>14</td>
            <td>100.0</td>
            <td>16:00:00</td>
            <td>12:00:00</td>
            <td>Check-in após as 16:00.</td>
            <td>Piscina, Chuveiro externo, Varanda com vista para o mar</td>
            <td>True</td>
        </tr>
        <tr>
            <td>20</td>
            <td>Loft Moderno</td>
            <td>Rua das Ruas, 1010</td>
            <td>1</td>
            <td>10</td>
            <td>2</td>
            <td>1</td>
            <td>240.0</td>
            <td>2</td>
            <td>1</td>
            <td>7</td>
            <td>60.0</td>
            <td>14:00:00</td>
            <td>12:00:00</td>
            <td>Proibido festas ou eventos.</td>
            <td>Wi-Fi, Ar condicionado, Cozinha americana</td>
            <td>True</td>
        </tr>
    </tbody>
</table>

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

- A segunda é o número de quartos; 
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
