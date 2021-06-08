class Room < ApplicationRecord
  with_options presence: true do
  validates :title
  validates :description
  end 
end
