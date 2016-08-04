class Industry < ActiveRecord::Base
  self.table_name = 'gyousyu33_master'
  self.primary_key = :code33
  has_many :stocks, foreign_key: :name33,primary_key: :name33
end
