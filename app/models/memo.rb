class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :method_category, optional: true
end
