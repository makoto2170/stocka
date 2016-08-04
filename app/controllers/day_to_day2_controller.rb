class DayToDay2Controller < ApplicationController
  def index
    @day_to_day2 = DayToDay2.all
    @page_title = 'STOCK AUTHORITY'
  end
  def show
    @day_to_day2_show=DayToDay2.find(params[:id])
    @id = params[:id]
  end
end
