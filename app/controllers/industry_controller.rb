class IndustryController < ApplicationController
  def index
    @gyousyu33master = Gyousyu33Master.find_by(name33: '建設').stocks
  end
  def show
    @industry_show = Industry.find(params[:id])
    @id = params[:id]
    @industry = Industry.find_by(code33: params[:id]).stocks
    @industry_name=Industry.find_by(code33: params[:id])
  end
end
