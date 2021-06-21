require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper
    url = "https://www.techpowerup.com/gpu-specs/"
    doc = Nokogiri::HTML(open(url))

    x = doc.search('tr').map.first

    link = "https://www.techpowerup.com" + x.children.children[2].attributes["href"].value

    gpu = Nokogiri::HTML(open(link))
    binding.pry
end

scrape = Scraper.new