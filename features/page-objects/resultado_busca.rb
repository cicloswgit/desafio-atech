class ResultadoBusca < SitePrism::Section
  element  :partida, 'tr td:nth-child(1)'
  element  :chegada, 'tr td:nth-child(2)'
  element  :origem, 'tr td:nth-child(3)'
  element  :destino, 'tr td:nth-child(4)'
  element  :status, 'tr td:nth-child(5)'
end
