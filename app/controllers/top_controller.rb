class TopController < ApplicationController
  def index
    @ranking_ratio_up = Ranking.order('before_ratio2 desc').limit(10)
    @ranking_ratio_down = Ranking.order('before_ratio2 asc').limit(10)
    @ranking_volume = Ranking.order('volume desc').limit(10)
    @ranking_t_value = Ranking.order('t_value desc').limit(10)
    require "feedjira"

feed = Feedjira::Feed.fetch_and_parse("http://news.finance.yahoo.co.jp/rss/cp/dzh.xml")

#puts "title         = " + feed.title
#puts "url           = " + feed.url
#puts "last_modified = " + feed.last_modified.to_s

feed.entries.each_with_index do |entry,i|
   @entry_title = entry.title
   @entry_url = entry.url
end
@entries = feed.entries
  end

  def about
  end
end
