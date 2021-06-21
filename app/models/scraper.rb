require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
    ubm_url = "https://pcpartpicker.com/products/video-card/"
    html = open(ubm_url) 
    doc = Nokogiri::HTML(html) 
    binding.pry

end

scrape = Scraper.new