class UserTest < ApplicationRecord
  # belongs_to :test
  # belongs_to :user
  belongs_to :result
  has_many :user_answers
  has_many :answers , through :user_answers
end
