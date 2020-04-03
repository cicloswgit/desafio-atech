require 'cucumber'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'webdrivers'
require 'rspec/expectations'
require 'site_prism'
require 'report_builder'
require 'rubocop'
require 'byebug'

require_relative 'application.rb'
ApplicationSettings.new.setup!

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{$env}.yml")
