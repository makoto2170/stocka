class CodeController < ApplicationController
  def index
  end
  def show
    id = params[:id]
    num_from = (id + '000').to_i
    num_to = (id + '999').to_i
    @code_show = Stock.where('code >= ?',num_from).where('code<=?',num_to).order('code') 
    @id = params[:id]
  end
end
