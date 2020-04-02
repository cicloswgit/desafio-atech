Dado("que acesso o site Atech Airlines") do
  Acesso.new.load
  @home = Busca.new
end

Então("visualizo sua tela Home") do
  expect(@home.titulo.visible?).to be_truthy
  expect(@home.titulo.text).to eq('Atech Airlines')
end
