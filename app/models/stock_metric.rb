class StockMetric < ApplicationRecord

  def return_on_investment
    (self.last.to_f / self.beginning_price.to_f)
  end

end
