class RankingController < ApplicationController
  def index
    @ranking_ratio_up = Ranking.order('before_ratio2 desc').limit(30)
    @ranking_ratio_down = Ranking.order('before_ratio2 asc').limit(30)
    @ranking_volume = Ranking.order('volume desc').limit(30)
    @ranking_t_value = Ranking.order('t_value desc').limit(30)
  end
  def show
    column = params[:id]
    @rank_method = "before_ratio2"
    case column
    when "ranking_up" then
      @ranking = Ranking.order('before_ratio2 desc').limit(300)
      @h2_title = "値上がりランキング"
      @col_title = "値上がり率"
    when "ranking_down" then
      @ranking = Ranking.order('before_ratio2 asc').limit(300)
      @column = column
      @h2_title = "値下がりランキング"
      @col_title = "値下がり率"
    when "volume" then
      @ranking = Ranking.order('volume desc').limit(300)
      @column = column
      @h2_title = "出来高ランキング"
      @col_title = "出来高"
    when "t_value" then
      @ranking = Ranking.order('t_value desc').limit(300)
      @column = column
      @h2_title = "売買代金ランキング"
      @col_title = "売買代金"
    else
      return false
    end
  end

end
