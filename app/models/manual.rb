class Manual < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :procedures, -> {order(position: :asc)}, dependent: :destroy

  attachment :image
end
