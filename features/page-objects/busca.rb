require_relative 'filtros.rb'

class Busca < SitePrism::Page
  element :titulo, 'div.jumbotron h1'
  section :filtros, Filtros, 'div[ng-include="\'partials/flight-filters.html\'"]'
  element :botao_filtrar, 'button.btn'

  def esperar_titulo
    wait_until_titulo_visible
  end
end
