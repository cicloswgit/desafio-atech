#language: pt
#encoding: utf-8

@atech @buscar_voos 
Funcionalidade: Buscar Vôos
	Como cliente Embraer
	Desejo acessar o site do Atech Airlines
	Para buscar os vôos disponíveis ao meu interesse
		baseado em filtros como datas de Partida e Chegada
		e baseado em filtros como locais de Origem e Destino

Contexto: Acesso ao Site
  	Dado que acesso o site Atech Airlines
  	Então visualizo sua tela Home

@positivo	@buscar_sucesso
Cenário: Buscar vôos com sucesso
	Dado que visualizo os filtros disponíveis para busca de vôos 
		E preencho o filtro Partida com a data "15/04/2018"
		E preencho o filtro Chegada com a data "16/04/2018"
		E preencho o filtro Origem com o item "São José dos Campos"
		E preencho o filtro Destino com o item "Nova Iorque"
	Quando submeto a busca	
	Então visualizo seu resultado com sucesso
	E ele apresenta os dados específicos à busca realizada

@positivo	@buscar_status
Esquema do Cenário: Validar Status dos vôos
	Dado que visualizo os filtros disponíveis para busca de vôos 
		E preencho o filtro Partida com a data "<partida>"
		E preencho o filtro Chegada com a data "<chegada>"
		E preencho o filtro Origem com o item "<origem>"
		E preencho o filtro Destino com o item "<destino>"
	Quando submeto a busca	
	Então visualizo o seguinte status do vôo "<status>"

	Exemplos:
	|  partida	|  chegada	|		origem			|		destino		|	status		|
	|15/04/2018	|16/04/2018	| São José dos Campos	|Nova Iorque		|	Confirmado	|
	|4/1/2018	|4/2/2018	| Nova Iorque			|São José dos Campos|	Cancelado	|
	|4/1/2018	|4/1/2018	| Tóquio				|Guarulhos			|	No ar		|
	|4/1/2018	|4/2/2018	| Nova Iorque			|Guarulhos			|	Atrasado	|
	|15/04/2018	|16/04/2018	| Tóquio				|São José dos Campos|	Pousou		|

@negativo	@buscar_em_branco
Esquema do Cenário: Buscar vôos informando filtros em branco
	Dado preencho o filtro Partida com a data "<partida>"
		E preencho o filtro Chegada com a data "<chegada>"
		E preencho o filtro Origem com o item "<origem>"
		E preencho o filtro Destino com o item "<destino>"
	Quando submeto a busca	
	Então visualizo seu resultado com sucesso
	Mas ele não apresenta apenas os dados específicos à busca realizada

	Exemplos:
	|  partida	|  chegada	|	origem		|		destino		|
	|			|			| 				|					|
	|15/04/2018	|			| 				|					|
	|			|16/04/2018	| 				|					|
	|			|			| 	Guarulhos	|					|
	|			|			| 				|Nova Iorque		|
	|01/04/2018	|02/04/2018	| Nova Iorque	|					|
	|01/04/2018	|01/04/2018	| 				|Guarulhos			|
	|01/04/2018	|			| Nova Iorque	|Guarulhos			|
	|			|16/04/2018	| Tóquio		|São José dos Campos|
