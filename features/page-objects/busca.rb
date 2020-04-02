class Busca < SitePrism::Section
  element  :titulo, 'div.jumbotron h1'
  #element  :campo_descricao, 'input[name="q"]'
  #element  :icone_lupa, 'button.search-input-icon'
  section  :filtros, Filtros, 'css'

  def preencher_descricao(texto)
    #wait_until_titulo_visible
    #campo_descricao.set(texto)
    #icone_lupa.click
    #$descricao = texto
  end
end
