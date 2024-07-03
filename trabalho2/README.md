# 🏡 Trabalho 2: AirBnb (pt2)

Utilizando os dados reais do AirBnb em um modelo criado a partir da descrição do trabalho.

## Entrega

A entrega está dividida de acordo com as tarefas.

### Tarefa 1
1. [Modelagem MER](pdf/1MER.pdf)

### Tarefa 2
1. [Mapeamento MER &#8594; MRel](pdf/2MapeamentoMRel.pdf)
2. [SQL com Criação das tabelas mapeadas](sql/2CriacaoTabelasMRel.sql)

### Tarefa 3
1. [Correspondência](pdf/3Correspondencia.pdf)
2. [Normalização](pdf/3Normalizacao.pdf)
3. [Criação](sql/3CriacaoAirbnb.sql) e [Carga](sql/3CargaAirbnb.sh) de tabelas do Airbnb
4. [Carga das tabelas mapeadas](sql/3CargaTabelasMRel.sql)

### Tarefa 4
1. [Query](sql/4Query6.sql) e [Explicação](pdf/4Query6.pdf) do exercício 6
2. [Query](sql/4Query7.sql) e [Explicação](pdf/4Query7.pdf) do exercício 7
3. [Query](sql/4Query8.sql) e [Explicação](pdf/4Query8.pdf) do exercício 8

## 💻 Notebook com as Consultas
Certifique de criar um ambiente virtual e instalar as bibliotecas necessárias!
``` bash
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements
```

## Geração de PDFs
É possível compilar os arquivos em `/markdown` para obter explicações sobre os comandos SQL, além da normalização e correspondência dos dados do AirBnb. Para isso é necessário ter o Pandoc e as bibliotecas latex-live instaladas e então executar o script `./gerar_pdf.sh`.