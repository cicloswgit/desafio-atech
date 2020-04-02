class ApplicationSettings
  def setup!
    $env = ENV['env']
    $nav = ENV['nav']

    setup_defaults!
  end

  private

  def setup_defaults!
    $env = 'prod' if $env.nil?
    puts "Ambiente definido: #{$env}"

    $nav = 'chrome' if $nav.nil?
    puts "Navegador definido: #{$nav}"
  end
end
