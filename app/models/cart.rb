class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :item_lines
end