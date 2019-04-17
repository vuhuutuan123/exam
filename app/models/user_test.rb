class UserTest < ApplicationRecord
  belongs_to :result
  belongs_to :test
  belongs_to :user
  has_many :user_answers
  has_many :answers , through :user_answers
end
