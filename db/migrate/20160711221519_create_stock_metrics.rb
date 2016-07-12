class CreateStockMetrics < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_metrics do |t|
      t.string :symbol
      t.string :company_name
      t.string :beginning_price
      t.string :last_change
      t.string :percent
      t.string :high
      t.string :low
      t.string :volume
      t.string :time

      t.timestamps
    end
  end
end
