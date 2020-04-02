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

@positivo
Cenário: Buscar vôos com sucesso
	Dado que visualizo os filtros disponíveis para busca de vôos 
		E preencho o filtro Partida com a data ""
		E preencho o filtro Chegada com a data ""
		E preencho o filtro Origem com o item ""
		E preencho o filtro Destino com o item ""
	Quando submeto a busca	
	Então visualizo seu resultado com sucesso
	E ele apresenta os dados específicos à busca realizada


