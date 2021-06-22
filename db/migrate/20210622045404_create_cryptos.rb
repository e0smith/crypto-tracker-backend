class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :symbol
      t.string :image
      t.decimal :current_price
      t.decimal :market_cap
      t.decimal :total_volume
      t.decimal :high_24h
      t.decimal :low_24h
      t.decimal :price_change_24h
      t.decimal :price_change_percentage_24h
      t.decimal :price_change_percentage_7d
      t.decimal :price_change_percentage_14d
      t.decimal :price_change_percentage_30d
      t.decimal :price_change_percentage_60d
      t.decimal :price_change_percentage_1y
      t.decimal :market_cap_change_24h
      t.decimal :market_cap_change_percentage_24h
      t.integer :total_supply
      t.decimal :circulating_supply
      t.timestamps
    end
  end
end
