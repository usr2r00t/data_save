require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load('config.json')

$:.unshift File.expand_path('./../lib', __FILE__)
require 'app/scrapping'
#binding.pry

def perform
    scrapping = Scrapping.new()

    scrapping.save_as_csv("emails.csv")
end

perform
