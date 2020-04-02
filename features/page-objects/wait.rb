module Wait
  include Capybara::DSL

  def self.wait_loaded_page
    loaded = false
    begin
        Capybara.page.first('button.button-more', visible: false)
                .text(:all).eql?('Todos os resultados foram carregados')
        loaded = true
    rescue TimeoutError
      puts 'Elemento não carregado!'
      retry unless loaded == true
      end
  end
end
