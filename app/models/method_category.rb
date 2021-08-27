class MethodCategory < ApplicationRecord
  belongs_to :user
  has_many :memos
end
