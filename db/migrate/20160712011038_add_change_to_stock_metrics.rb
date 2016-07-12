class AddChangeToStockMetrics < ActiveRecord::Migration[5.0]
  def change
    add_column :stock_metrics, :change, :string
  end
end
