class Procedure < ApplicationRecord
  belongs_to :manual
  acts_as_list scope: :manual
end
