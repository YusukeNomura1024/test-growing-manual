class Category < ApplicationRecord
  has_many :manuals
  belongs_to :user
end
