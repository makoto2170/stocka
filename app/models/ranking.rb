class Ranking < ActiveRecord::Base
  self.table_name = 'day_to_day'
  self.primary_key = :code
end
