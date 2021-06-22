require 'httparty'

cryptoArray = HTTParty.get('https://api.coingecko.com/api/v3/coins/')

cryptoArray.each do |coin|
    cryptoHash = {
        name: coin['name'],
        symbol: coin['symbol'],
        image: coin['image']['large'],
        current_price: coin['market_data']['current_price']['usd'],
        market_cap: coin['market_data']['market_cap']['usd'],
        total_volume: coin['market_data']['total_volume']['usd'],
        high_24h: coin['market_data']['high_24h']['usd'],
        low_24h: coin['market_data']['low_24h']['usd'],
        price_change_24h: coin['market_data']['price_change_24h'],
        price_change_percentage_24h: coin['market_data']['price_change_percentage_24h'],
        price_change_percentage_7d: coin['market_data']['price_change_percentage_7d'],
        price_change_percentage_14d: coin['market_data']['price_change_percentage_14d'],
        price_change_percentage_30d: coin['market_data']['price_change_percentage_30d'],
        price_change_percentage_60d: coin['market_data']['price_change_percentage_60d'],
        price_change_percentage_1y: coin['market_data']['price_change_percentage_1y'],
        market_cap_change_24h: coin['market_data']['market_cap_change_24h'],
        market_cap_change_percentage_24h: coin['market_data']['market_cap_change_percentage_24h'],
        total_supply: coin['market_data']['total_supply'],
        circulating_supply: coin['market_data']['circulating_supply']
    }
    Crypto.find_or_create_by(cryptoHash)

end

