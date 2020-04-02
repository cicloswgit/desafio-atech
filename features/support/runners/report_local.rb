require 'report_builder'

class ReportLocal
  def configurar_relatorio(conf)
    $report_title = "Data: #{Time.now.strftime("%d-%m-%y")}," +
                    "Hora: #{Time.now.strftime("%H:%M")}"

    conf.json_path = 'test_results/reports/report.json'
    conf.report_path = "test_results/reports/report"
    conf.report_types = [:html]
    conf.report_title = "Desafio Atech - #{$report_title} "
    conf.color = "cyan"
  end
end
