require 'csv'

# { "Sym"=>"A", "Name"=>"Agilent Technologies", "1/2/2009 (Open)"=>"15.6",
#   "Last"=>"45.48", "Change"=>"1.06", "Percent"=>"2.39%", "High"=>"45.55",
#   "Low"=>"44.86", "Volume"=>"1838100", "Time"=>"Friday, July 8, 2016", nil=>"191.54%"
# }

csv_text = File.read('../S&P500List.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  StockMetric.create(symbol: row["symbol"], company_name: row["company_name"], beginning_price: row["beginning_price"],
                    percent: row["percent"], high: row["high"], low: row["low"], volume: row["volume"], time: row["time"],
                    last: row["last"], change: row["change"])
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
