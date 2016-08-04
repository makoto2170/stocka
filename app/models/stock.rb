class Stock < ActiveRecord::Base
  self.table_name = 'day_to_day'
  self.primary_key = :code
  belongs_to :gyousyu33_master,foreign_key: :name33
  belongs_to :industry,foreign_key: :name33
end
