# Exercício 6


Essa query tem por objetivo mostrar as locações confirmadas com check-in a partir de 2024-04-01, incluindo os atributos chave das relações envolvidas na query, bem como o total de dias locados, o nome do anfitrião, o nome do locatário e o valor da diária. Para isso, precisamos das relações: locações, usuários, propriedades e anfitriões. Primeiro, com a relação locação, fazemos três JOIN, para obter os dados do usuário locatário, da propriedade e do anfitrião referentes a cada locação. Ainda, fazemos um JOIN novamente com a relação usuário, igualando o ID do usuário com o IDAnfitriao, para obter o nome dos anfitriões. Por fim, usamos a cláusula WHERE para selecionar datas de check-in maiores que 2024-04-01. O total de dias locados é calculado subtraindo a data de check-in da data de check-out.


<div>
<table>
    <thead>
        <tr>
            <th>idlocacao</th>
            <th>idlocatario</th>
            <th>idpropriedade</th>
            <th>nome</th>
            <th>idanfitriao</th>
            <th>nomeanfitriao</th>
            <th>idusuario</th>
            <th>nomeusuario</th>
            <th>totaldias</th>
            <th>precodiaria</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>14</td>
            <td>8</td>
            <td>4</td>
            <td>Sobrado Aconchegante</td>
            <td>15</td>
            <td>Guilherme</td>
            <td>8</td>
            <td>Juliana</td>
            <td>10</td>
            <td>300.0</td>
        </tr>
        <tr>
            <td>15</td>
            <td>9</td>
            <td>1</td>
            <td>Casa da Colina</td>
            <td>7</td>
            <td>Lucas</td>
            <td>9</td>
            <td>Mateus</td>
            <td>10</td>
            <td>220.0</td>
        </tr>
        <tr>
            <td>16</td>
            <td>10</td>
            <td>2</td>
            <td>Apartamento Charmoso</td>
            <td>10</td>
            <td>Laura</td>
            <td>10</td>
            <td>Laura</td>
            <td>10</td>
            <td>280.0</td>
        </tr>
        <tr>
            <td>17</td>
            <td>11</td>
            <td>10</td>
            <td>Cabana à Beira do Rio</td>
            <td>11</td>
            <td>Gabriel</td>
            <td>11</td>
            <td>Gabriel</td>
            <td>10</td>
            <td>180.0</td>
        </tr>
        <tr>
            <td>18</td>
            <td>12</td>
            <td>10</td>
            <td>Cabana à Beira do Rio</td>
            <td>11</td>
            <td>Gabriel</td>
            <td>12</td>
            <td>Fernanda</td>
            <td>9</td>
            <td>180.0</td>
        </tr>
        <tr>
            <td>19</td>
            <td>13</td>
            <td>10</td>
            <td>Cabana à Beira do Rio</td>
            <td>11</td>
            <td>Gabriel</td>
            <td>13</td>
            <td>Rafael</td>
            <td>10</td>
            <td>180.0</td>
        </tr>
        <tr>
            <td>20</td>
            <td>14</td>
            <td>10</td>
            <td>Cabana à Beira do Rio</td>
            <td>11</td>
            <td>Gabriel</td>
            <td>14</td>
            <td>Camila</td>
            <td>10</td>
            <td>180.0</td>
        </tr>
        <tr>
            <td>9</td>
            <td>16</td>
            <td>3</td>
            <td>Cabana na Floresta</td>
            <td>12</td>
            <td>Fernanda</td>
            <td>16</td>
            <td>Isabela</td>
            <td>5</td>
            <td>180.0</td>
        </tr>
        <tr>
            <td>10</td>
            <td>17</td>
            <td>4</td>
            <td>Sobrado Aconchegante</td>
            <td>15</td>
            <td>Guilherme</td>
            <td>17</td>
            <td>Mariana</td>
            <td>10</td>
            <td>300.0</td>
        </tr>
        <tr>
            <td>11</td>
            <td>18</td>
            <td>1</td>
            <td>Casa da Colina</td>
            <td>7</td>
            <td>Lucas</td>
            <td>18</td>
            <td>Leonardo</td>
            <td>10</td>
            <td>220.0</td>
        </tr>
        <tr>
            <td>12</td>
            <td>19</td>
            <td>2</td>
            <td>Apartamento Charmoso</td>
            <td>10</td>
            <td>Laura</td>
            <td>19</td>
            <td>Larissa</td>
            <td>10</td>
            <td>280.0</td>
        </tr>
        <tr>
            <td>13</td>
            <td>20</td>
            <td>3</td>
            <td>Cabana na Floresta</td>
            <td>12</td>
            <td>Fernanda</td>
            <td>20</td>
            <td>Matheus</td>
            <td>9</td>
            <td>180.0</td>
        </tr>
    </tbody>
</table>
</div>