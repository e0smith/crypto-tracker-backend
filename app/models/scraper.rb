require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    OBJS = []
    ARRAY = []

    url = "https://coinmarketcap.com/"
    doc = Nokogiri::HTML(open(url))
    x = doc.search("a").map{|e| OBJS << e["href"]}

    OBJS.each do |x|
        if x.to_s.include? '/currencies/'
            if !x.include? 'market'
                ARRAY << x
            end
        end
    end

    def self.return_urls
        urls = []
        ARRAY.uniq.each do |x|
            x.to_s
            urls << ("https://coinmarketcap.com/" + x)
        end
        return urls
    end
    # binding.pry
end







# url = "https://www.techpowerup.com/gpu-specs/"
# doc = Nokogiri::HTML(open(url))

# x = doc.search(".vendor-NVIDIA, .vendor-AMD").map{|e| e.children[1]}

# link = "https://www.techpowerup.com" + x.each{|e| e.first.attributes["href"].value}

# # gpu = Nokogiri::HTML(open(link))
# binding.pry