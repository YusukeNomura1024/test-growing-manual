class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :manuals, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :method_categories, dependent: :destroy
end
