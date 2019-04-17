class UserTest < ApplicationRecord
  has_one :result
  belongs_to :test
  belongs_to :user
  has_many :user_answers
  has_many :answers , through :user_answers
end
