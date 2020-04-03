require_relative 'runners/capybara_local.rb'
require_relative 'runners/report_local.rb'

Before do
  :each
  CapybaraLocal.new.selecionar_browser
end
After do
  :each
  Capybara.save_screenshot
  Capybara.current_session.driver.quit
end

ReportBuilder.configure do |conf|
  ReportLocal.new.configurar_relatorio(conf)
end
at_exit do
  ReportBuilder.build_report
end
