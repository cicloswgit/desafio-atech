require 'report_builder'

class ReportLocal
  def configurar_relatorio(conf)
    time = Time.now.getutc
    ReportBuilder.configure do |config|
      config.json_path = 'test_results/reports/report.json'
      config.report_path = 'test_results/reports/report.html'
      config.report_types = [:html]
      config.report_tabs = %w[Overview Features Scenarios Errors]
      config.report_title = 'Desafio Atech'
      config.compress_images = false
      config.additional_info = { 'Ambiente' => $env, 'Browser' => $nav, 'Relatório gerado em ' => time }
    end
  end
end
