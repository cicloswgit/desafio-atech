class CapybaraLocal
  def selecionar_browser
    case $nav
    when 'firefox'
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :firefox)
      end
    else
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
      end
    end
    #TODO - headless - javascript 
    Capybara.default_driver = :selenium
    Capybara.javascript_driver = :selenium
    Capybara.default_max_wait_time = 50
    Capybara.default_selector = :css
    Capybara.app_host = CONFIG['base_uri']
    Capybara.save_path = 'test_results/evidências/'

    Capybara.page.driver.browser.manage.window.maximize
  end
end
