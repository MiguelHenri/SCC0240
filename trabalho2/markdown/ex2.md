# Exercício 2
## 1: Mapear Conjuntos de Entidades Regulares
Localizações = {<u>ID</u>, País, Estado, Cidade, Bairro}

Propriedades = {<u>ID</u>, Nome, Endereço, CasaInteira, NQuartos, NBanheiros, PrecoDiaria, NMaxHospedes, MinNoites, MaxNoites, ValorLimpeza, HorarioCheckin, HorarioCheckout}
## 2: Mapear Conjunto de Entidades Fracas
DatasDisponiveis = {<u>IDPropriedade, Data</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Regras = {<u>IDPropriedade, Regra</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Comodidades = {<u>IDPropriedade, Comodidade</u>}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Quartos = {<u>IDPropriedade, ID</u>, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

PontosInteresse = {<u>IDLocalização, Nome</u>} 

(IDLocalização) &#8594; Localização(ID)
<br/>  

Fotos = {<u>IDRemetente, IDDestinatário</u>, DataCriacao, Foto}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao)
<br/>  

Contas = {<u>IDUsuario, Numero</u>, Tipo, Roteamento}

(IDUsuario) &#8594; Usuarios(ID)
### a: Mapear Agregações
Locação = {DataCheckIn, IDHospede, IDPropriedade, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Mensagens = {IDRemetente, IDDestinatário, DataCriacao, Texto, ClassificacaoLimpeza, ClassificacaoComunicacao, ClassificacaoLocalizacao, ClassificacaoValor}

(IDRemetente) &#8594; Usuarios(ID)

(IDDestinatario) &#8594; Usuarios(ID)
### b: Mapear Genereralizações
Usuarios = {ID, Nome, Sobrenome, Telefone, Nascimento, Endereço, Sexo, Email, Senha, EAnfitriao}
## 3: Mapear os CR de Cardinalidade 1:1
Não tem
## 4: Mapear os CR de Cardinalidade 1:N
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
<br/>  

Regras = {IDPropriedade, Regra}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Comodidades = {IDPropriedade, Comodidade}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

Quartos = {IDPropriedade, ID, Individual, NSolteiro, NCasal}

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

PontosInteresse = {IDLocalização, Nome} 

(IDLocalização) &#8594; Localização(ID)
<br/>  

Fotos = {IDRemetente, IDDestinatário, DataCriacao, Foto}

(IDRemetente) &#8594; Mensagens(IDRemetente)

(IDDestinatario) &#8594; Mensagens(IDDestinatário)

(DataCriacao) &#8594; Mensagens(DataCriacao)
<br/>  

Contas = {IDUsuario, Numero, Tipo, Roteamento}

(IDUsuario) &#8594; Usuarios(ID)
<br/>  

Locação = {DataCheckIn, IDHospede, IDPropriedade, DataReserva, DataCheckout, NHospedes, Imposto, PrecoTotal, PrecoImpostos, CodigoPromocional, ValorDesconto, Confirmada}

(IDHospede) &#8594; Usuarios(ID)

(IDPropriedade) &#8594; Propriedades(ID)
<br/>  

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
<br/>  



