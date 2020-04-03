Dado("que visualizo os filtros disponíveis para busca de vôos") do
	@busca = Busca.new
	@filtros = @busca.filtros
end

Dado("preencho o filtro Partida com a data {string}") do |checkin|
	@filtros.campos_data[0].set(checkin)
end

Dado("preencho o filtro Chegada com a data {string}") do |checkout|
	@filtros.campos_data[1].set(checkout)
end
Dado("preencho o filtro Origem com o item {string}") do |origem|
	@filtros.combos_locais[0].first(:option, origem).select_option
end

Dado("preencho o filtro Destino com o item {string}") do |destino|
	@filtros.combos_locais[0].first(:option, destino).select_option
end

Quando("submeto a busca") do
	@busca.botao_filtrar.click
end

Então("visualizo seu resultado com sucesso") do

end

Então("ele apresenta os dados específicos à busca realizada") do

end

Então("visualizo o seguinte status do vôo {string}") do |status|

end

Então("ele não apresenta apenas os dados específicos à busca realizada") do

end