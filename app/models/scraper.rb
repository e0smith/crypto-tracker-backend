require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper

    url = "https://coinmarketcap.com/"
    # url = "https://www.techpowerup.com/gpu-specs/"
    doc = Nokogiri::HTML(open(url))
    x = doc.search("*[contains(@display, 'flex')]").map{|e| e}

    OBJS = []

    URLS = []

    COIN_URLS = []

    x.each do |obj|
        if obj.search("href") != ""
            OBJS << obj
        end
    end

    OBJS.each do |obj|
        if obj.search(".cmc-link") != ""
            URLS << obj
        end
    end

    URLS.each do |x|
        if x == ""
            x.delete
        end
    end
    # x = doc.search("*[contains(@style, 'text-align:left')]").map{|e| e}

    # link = "https://www.techpowerup.com" + x.each{|e| e.first.attributes["href"].value}

    # gpu = Nokogiri::HTML(open(link))
    # binding.pry
end

scrape = Scraper.new






# url = "https://www.techpowerup.com/gpu-specs/"
# doc = Nokogiri::HTML(open(url))

# x = doc.search(".vendor-NVIDIA, .vendor-AMD").map{|e| e.children[1]}

# link = "https://www.techpowerup.com" + x.each{|e| e.first.attributes["href"].value}

# # gpu = Nokogiri::HTML(open(link))
# binding.pry