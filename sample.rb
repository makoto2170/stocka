require "feedjira"

feed = Feedjira::Feed.fetch_and_parse("http://news.finance.yahoo.co.jp/rss/cp/dzh.xml")

puts "title         = " + feed.title
puts "url           = " + feed.url
puts "last_modified = " + feed.last_modified.to_s

feed.entries.each do |entry|
  puts "-----"
  puts entry.title
  puts entry.url
end
