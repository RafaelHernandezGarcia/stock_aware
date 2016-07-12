class ChangeLastChangeFieldForStockMetric < ActiveRecord::Migration[5.0]
  def change
    rename_column :stock_metrics, :last_change, :last 
  end
end
