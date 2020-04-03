Dado("que visualizo os filtros disponíveis para busca de vôos") do
	@busca = Busca.new
	@filtros = @busca.filtros
end

Dado("preencho o filtro Partida com a data {string}") do |partida|
	unless partida.eql?('')
		@filtros.campos_data[0].set(partida)
		@partida = partida
	end	
end

Dado("preencho o filtro Chegada com a data {string}") do |chegada|
	unless chegada.eql?('')
		@filtros.campos_data[1].set(chegada)
		@chegada = chegada
	end
end
Dado("preencho o filtro Origem com o item {string}") do |origem|
	unless origem.eql?('')
		@filtros.combos_locais[0].first(:option, origem).select_option
		@origem = origem
	end
end

Dado("preencho o filtro Destino com o item {string}") do |destino|
	unless destino.eql?('')
		@filtros.combos_locais[1].first(:option, destino).select_option
		@destino = destino
	end	
end

Quando("submeto a busca") do
	@busca.botao_filtrar.click
end

Então("visualizo seu resultado com sucesso") do	
	expect(@busca.resultado_busca).not_to be_nil
	@resultado = @busca.resultado_busca[0]
end

Então("ele apresenta os dados específicos à busca realizada") do
	@resultado.wait_until_partida_visible
	expect(@resultado.partida.text).to include(@partida)
	expect(@resultado.chegada.text).to include(@chegada)
	expect(@resultado.origem.text).to include(@origem)
	expect(@resultado.destino.text).to include(@destino)
end

Então("visualizo o seguinte status do vôo {string}") do |status|
	resultado = @busca.resultado_busca[0]
	resultado.wait_until_partida_visible
	expect(resultado.status.text).to include(status)
end

Então("ele não apresenta apenas os dados específicos à busca realizada") do
	@resultado.wait_until_partida_visible
	expect(@busca.resultado_busca.count).to be >= 1
end