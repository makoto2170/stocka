class StockController < ApplicationController
  def index
    @page_title = 'STOCK AUTHORITY'
    @gyousyu33_master = Gyousyu33Master.order('code33 ASC')
  end
  def show
    @stock_show=Stock.find(params[:id])
    @id = params[:id]
  end
end
