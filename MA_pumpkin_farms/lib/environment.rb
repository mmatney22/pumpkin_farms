require_relative "./MA_pumpkin_farms/version"
require_relative "./MA_pumpkin_farms/cli"
require_relative "./MA_pumpkin_farms/state"
require_relative "./MA_pumpkin_farms/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'


module MAPumpkinFarms
  class Error < StandardError; end
  # Your code goes here...
end
