require_relative 'filtros.rb'
require_relative 'resultado_busca.rb'

class Busca < SitePrism::Page
  element :titulo, 'div.jumbotron h1'
  section :filtros, Filtros, 'div[ng-include="\'partials/flight-filters.html\'"]'
  element :botao_filtrar, 'button.btn'
  sections :resultado_busca, ResultadoBusca, 'table.table tbody tr'

  def esperar_titulo
    wait_until_titulo_visible
  end
end
