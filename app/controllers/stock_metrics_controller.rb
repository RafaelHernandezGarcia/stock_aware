class StockMetricsController < ApplicationController

  def results
    stock = StockMetric.find_by(symbol: params[:stock].upcase)
    @result = stock.return_on_investment.to_f * params[:amount_invested].to_f
  end

  # def show
  #   @stock = StockMetric.find(params[:id])
  #   roi = @stock.return_on_investment
  # end

  def create
  end
end
