# Exercício 2
### Notação:
Estamos representando 
    - a <u>Chave Primária com sublinhado </u>;
    - a *Secundária com itálico*;
    - e uma chave estrangeira com &#8594; ;

## 1: Mapear Conjuntos de Entidades Regulares
Existem apenas dois CE Regulares, que são inicialmente mapeados como abaixo.

Localizações = {<u>ID</u>, País, Estado, Cidade, Bairro}

Propriedades = {<u>ID</u>, *Nome, Endereço*, CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout}

## 2: Mapear Conjuntos de Entidades Fracos
Existem diversas relações com atributos multivalorados no MER que vão originar as seguintes relações.

DatasDisponiveis = {<u>IDPropriedade, Data</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Regras = {<u>IDPropriedade, Regra</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Comodidades = {<u>IDPropriedade, Comodidade</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

PontosInteresse = {<u>IDLocalização, Nome</u>} 

(IDLocalização) &#8594; Localização(ID)
<br/>  

Fotos = {<u>IDRemetente, IDDestinatário, DataCriacao, Foto</u>}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao)
<br/>  

Além disso, existem CE Fracos, que serão mapeadas da seguinte forma:

Quartos = {<u>IDPropriedade, ID</u>, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Contas = {<u>IDUsuario, Numero, Tipo, Roteamento</u>}

(IDUsuario) &#8594; Usuarios(ID)

### a: Mapear Agregações
#### Locação

Pode existir mais de uma instância do CE Agregação. Como é possível repassar todos atributos do CR gerador para o CR Agregação, mapeamos apenas o CE Agregação.

Locação = {DataCheckIn, IDHospede, IDPropriedade, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

#### Mensagens

Possui o mapeamento semelhante a Locação.

Mensagens = {IDRemetente, IDDestinatário, DataCriacao, Texto, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

### b: Mapear Genereralizações
#### Usuários

Deve-se criar a generalização de Usuários pois os CEEs se relacionam de maneira diferente do que os demais CEs e os CEE possuem atributos específicos.
É escolhida a alternativa de mapeamento 1G, que mapeia todos CEG e CEE em uma única relação, pois não existem especializações previstas a priori e existem poucos atributos específicos. Também se escolhe a alternativa de procedimento padrão G4, em que a ocorrência de generalização é não sobreponível. Consideramos que todos são Hóspedes e portanto as especializações possíveis são 'Hóspede' ou 'Anfitrião e Hóspede'. Para tanto, utilizamos uma variável binária EAnfitriao ('É Anfitrião?').

Usuarios = {ID, Nome, Sobrenome, Telefone, Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao}

## 3: Mapear os CR de Cardinalidade 1:1
Não tem.

## 4: Mapear os CR de Cardinalidade 1:N
Os atributos-chave da relação que mapeia o CE que participa com cardinalidade 1 são acrescentados na relação que mapeia o CE que participa com cardinalidade N.

Propriedades = {ID, Nome, Endereço, CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout, IDAnfitriao, IDLocalizacao}

(IDAnfitriao) &#8594; Usuarios(ID)

(IDLocalização) &#8594; Localização(ID)
<br/>  

Usuarios = {ID, Nome, Sobrenome, Telefone, Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao, IDLocalização}

(IDLocalização) &#8594; Localização(ID)
<br/>  

Mensagens = {IDRemetente, IDDestinatário, DataCriacao, IDPropriedade, Texto, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)

## 5: Mapear os CR de Cardinalidade M:N
Não tem

## 6: Mapear os CR de Cardinalidade > 2
Não tem


# Mapeamento Final
DatasDisponiveis = {IDPropriedade, Data}
(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

Regras = {IDPropriedade, Regra}

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

Comodidades = {IDPropriedade, Comodidade}

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

Quartos = {IDPropriedade, ID, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

PontosInteresse = {IDLocalização, Nome} 

(IDLocalização) &#8594; Localização(ID)

\pagebreak  

Fotos = {IDRemetente, IDDestinatário, DataCriacao, Foto}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao)

\pagebreak  

Contas = {IDUsuario, Numero, Tipo, Roteamento}

(IDUsuario) &#8594; Usuarios(ID)

\pagebreak  

Locação = {DataCheckIn, IDHospede, IDPropriedade, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

Propriedades = {ID, Nome, Endereço, CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout, IDAnfitriao, IDLocalizacao}

(IDAnfitriao) &#8594; Usuarios(ID)

(IDLocalização) &#8594; Localização(ID)

\pagebreak  

Usuarios = {ID, Nome, Sobrenome, Telefone, Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao, IDLocalização}

(IDLocalização) &#8594; Localização(ID)

\pagebreak  

Mensagens = {IDRemetente, IDDestinatário, DataCriacao, IDPropriedade, Texto, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  



