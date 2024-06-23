# Exercício 2
### Notação:
Estamos representando 
a [Chave Primária com sublinhado ]{.underline}; 
a *Secundária com itálico*; 
e uma chave estrangeira com &#8594; ;

## 1: Mapear Conjuntos de Entidades Regulares
Existem apenas dois CE Regulares, que são inicialmente mapeados como abaixo.

Localizações = {[ID]{.underline}, País, Estado, Cidade, Bairro}

Propriedades = {[ID]{.underline}, *Nome, Endereço*, CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout}

## 2: Mapear Conjuntos de Entidades Fracos
Existem diversas relações com atributos multivalorados no MER que vão originar as seguintes relações.

DatasDisponiveis = {[IDPropriedade, Data]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID) \


Regras = {[IDPropriedade, Regra]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID) \


Comodidades = {[IDPropriedade, Comodidade]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID) \


PontosInteresse = {[IDLocalização, Nome]{.underline}} 

(IDLocalização) &#8594; Localização(ID) \


Fotos = {[IDRemetente, IDDestinatário, DataCriacao, Foto]{.underline}}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao) \


Além disso, existem CE Fracos, que serão mapeadas da seguinte forma:

Quartos = {[IDPropriedade, ID]{.underline}, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID) \


Contas = {[IDUsuario, Numero, Tipo, Roteamento]{.underline}}

(IDUsuario) &#8594; Usuarios(ID)

### a: Mapear Agregações
#### Locação:

Pode existir mais de uma instância do CE Agregação. Como é possível repassar todos atributos do CR gerador para o CR Agregação, mapeamos apenas o CE Agregação.

Locação = {[DataCheckIn +, IDHospede, IDPropriedade]{.underline}, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID) \


#### Mensagens:

Possui o mapeamento semelhante a Locação.

Mensagens = {[DataCriacao +, IDRemetente, IDDestinatário]{.underline}, Texto, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

### b: Mapear Genereralizações
#### Usuários:

Deve-se criar a generalização de Usuários pois os CEEs se relacionam de maneira diferente do que os demais CEs e os CEE possuem atributos específicos.
É escolhida a alternativa de mapeamento 1G, que mapeia todos CEG e CEE em uma única relação, pois não existem especializações previstas a priori e existem poucos atributos específicos. Também se escolhe a alternativa de procedimento padrão G4, em que a ocorrência de generalização é não sobreponível. Consideramos que todos são Hóspedes e portanto as especializações possíveis são 'Hóspede' ou 'Anfitrião e Hóspede'. Para tanto, utilizamos uma variável binária EAnfitriao ('É Anfitrião?').

Usuarios = {[ID]{.underline}, *Nome, Sobrenome, Telefone,* Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao}

## 3: Mapear os CR de Cardinalidade 1:1
Não tem.

## 4: Mapear os CR de Cardinalidade 1:N
Os atributos-chave da relação que mapeia o CE que participa com cardinalidade 1 são acrescentados na relação que mapeia o CE que participa com cardinalidade N.

Propriedades = {[ID]{.underline}, *Nome, Endereço,* CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout, IDAnfitriao, IDLocalizacao}

(IDAnfitriao) &#8594; Usuarios(ID)

(IDLocalização) &#8594; Localização(ID) \

Usuarios = {[ID]{.underline}, *Nome, Sobrenome, Telefone,* Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao, IDLocalização}

(IDLocalização) &#8594; Localização(ID) \

No caso das mensagens, é possível realizar o Mapeamento criando uma nova relação. Isso acontece pois o Multiplicidade Mínima é 0 e a quantidade esperada de cada CE no CR é pequena. Isso se traduz ao entender que existem muitas mensagens na plataforma, porém somente algumas são avaliações. Além disso, nem toda mensagem precisa estar ligada a uma propriedade, a avaliando, e vice-versa. Para tanto criaremos uma nova relação chamada Avaliações.

Mensagens = {[DataCriacao +, IDRemetente, IDDestinatário]{.underline}, Texto}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID) \

A relação Avaliação tem como chave os atributos chaves da relação que mapeia o CE com cardinalidade N (DataCriacao +, IDRemetente, IDDestinatário) e como atributos, a chave do CE de cardinalidade 1 e seus atributos.

Avaliações = {[DataCriacao, IDRemetente, IDDestinatário]{.underline}, IDPropriedade, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

## 5: Mapear os CR de Cardinalidade M:N
Não tem

## 6: Mapear os CR de Cardinalidade > 2
Não tem

\pagebreak 

## Mapeamento Final
### Datas Disponíveis
Relação originada a partir de atributo multivalorado em relação do MER. Não leva em conta conhecimento adicional sobre o atributo que está sendo mapeado. A alternativa de mapeamento deve levar em conta conhecimento adicional e é utilizada apenas para casos em que a ocorrência de valores é conhecida e é pequena.

DatasDisponiveis = {[IDPropriedade, Data]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID)
\pagebreak  

### Regras
Relação originada a partir de atributo multivalorado em relação do MER. Não leva em conta conhecimento adicional sobre o atributo que está sendo mapeado. A alternativa de mapeamento deve levar em conta conhecimento adicional e é utilizada apenas para casos em que a ocorrência de valores é conhecida e é pequena.

Regras = {[IDPropriedade, Regra]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID)
\pagebreak  

### Comodidades
Relação originada a partir de atributo multivalorado em relação do MER. Não leva em conta conhecimento adicional sobre o atributo que está sendo mapeado. A alternativa de mapeamento deve levar em conta conhecimento adicional e é utilizada apenas para casos em que a ocorrência de valores é conhecida e é pequena.

Comodidades = {[IDPropriedade, Comodidade]{.underline}}

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

### Pontos de Interesse
Relação originada a partir de atributo multivalorado em relação do MER. Não leva em conta conhecimento adicional sobre o atributo que está sendo mapeado. A alternativa de mapeamento deve levar em conta conhecimento adicional e é utilizada apenas para casos em que a ocorrência de valores é conhecida e é pequena.

PontosInteresse = {[IDLocalização, Nome]{.underline}} 

(IDLocalização) &#8594; Localização(ID)

\pagebreak

### Fotos  
Relação originada a partir de um Conjunto de Entidades Fraco. É formada por todos atributos do CE mais os atributos da relação que torna o CE fraco. Sua chave é composta pelas chaves desses CEs mais a chave do próprio CEF.

Fotos = {[IDRemetente, IDDestinatário, DataCriacao, Foto]{.underline}}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao)

\pagebreak  

### Contas
Relação originada a partir de um Conjunto de Entidades Fraco. É formada por todos atributos do CE mais os atributos da relação que torna o CE fraco. Sua chave é composta pelas chaves desses CEs mais a chave do próprio CEF.

Contas = {[IDUsuario, Numero, Tipo, Roteamento]{.underline}}

(IDUsuario) &#8594; Usuarios(ID)

\pagebreak  

### Quartos
Relação originada a partir de um Conjunto de Entidades Fraco. É formada por todos atributos do CE mais os atributos da relação que torna o CE fraco. Sua chave é composta pelas chaves desses CEs mais a chave do próprio CEF.

Quartos = {[IDPropriedade, ID]{.underline}, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

### Locação
Analisamos se pode existir mais de uma instância do CE Agregação. Como é possível repassar todos atributos do CR gerador para o CR Agregação, mapeamos apenas o CE Agregação.

Locação = {[DataCheckIn +, IDHospede, IDPropriedade]{.underline}, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

### Propriedades 
CE Regular, mapeado de forma direta. Para o CR, os atributos-chave da relação que mapeia o CE que participa com cardinalidade 1 são acrescentados na relação que mapeia o CE que participa com cardinalidade N. A alternativa de mapeamento envolve criar uma nova relação, tal como para relacionamentos de cardinalidade N:M. Não é ideal pois a multiplicidade mínima esperada é 1, isto é, esperamos que a maioria das Propriedades tenham uma Localização. 

Propriedades = {[ID]{.underline}, *Nome, Endereço,* CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout, IDAnfitriao, IDLocalizacao}

(IDAnfitriao) &#8594; Usuarios(ID)

(IDLocalização) &#8594; Localização(ID)

\pagebreak  

### Usuários
É um CE Genérico. 
Deve-se criar a generalização de Usuários pois os CEEs se relacionam de maneira diferente do que os demais CEs e os CEE possuem atributos específicos.
É escolhida a alternativa de mapeamento 1G, que mapeia todos CEG e CEE em uma única relação, pois não existem especializações previstas a priori e existem poucos atributos específicos. Também se escolhe a alternativa de procedimento padrão G4, em que a ocorrência de generalização é não sobreponível. Consideramos que todos são Hóspedes e portanto as especializações possíveis são 'Hóspede' ou 'Anfitrião e Hóspede'. Para tanto, utilizamos uma variável binária EAnfitriao ('É Anfitrião?').

Para o CR, os atributos-chave da relação que mapeia o CE que participa com cardinalidade 1 são acrescentados na relação que mapeia o CE que participa com cardinalidade N. A alternativa de mapeamento envolve criar uma nova relação, tal como para relacionamentos de cardinalidade N:M. Não é ideal pois a multiplicidade mínima esperada é 1, isto é, esperamos que a maioria dos Usuários tenham uma Localização. 

Usuarios = {[ID]{.underline}, *Nome, Sobrenome, Telefone,* Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao, IDLocalização}

(IDLocalização) &#8594; Localização(ID)

\pagebreak  

### Mensagens
Analisamos se pode existir mais de uma instância do CE Agregação. Como é possível repassar todos atributos do CR gerador para o CR Agregação, mapeamos apenas o CE Agregação.

No caso das mensagens, é possível realizar o Mapeamento criando uma nova relação ao invés do modo tradicional de repassar os atributos para o CE de cardinalidade N. Isso acontece pois o Multiplicidade Mínima é 0 e a quantidade esperada de cada CE no CR é pequena. Isso se traduz ao entender que existem muitas mensagens na plataforma, porém somente algumas são avaliações. Além disso, nem toda mensagem precisa estar ligada a uma propriedade, a avaliando, e vice-versa. Para tanto criaremos uma nova relação chamada Avaliações.

Mensagens = {[DataCriacao +, IDRemetente, IDDestinatário]{.underline}, Texto}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)

\pagebreak  

### Avaliações
Originada por decisão alternativa de mapeamento. A relação Avaliação tem como chave os atributos chaves da relação que mapeia o CE com cardinalidade N (DataCriacao +, IDRemetente, IDDestinatário) e como atributos, a chave do CE de cardinalidade 1 e seus atributos. O atributo composto é desmembrado em atributos normais.

Avaliações = {[DataCriacao, IDRemetente, IDDestinatário]{.underline}, IDPropriedade, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}