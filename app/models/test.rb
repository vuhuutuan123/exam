class Test < ApplicationRecord
  # has_many :user_tests
  # has_many :users , through :user_tests
  has_and_belongs_to_many :users
  belongs_to :topic
  has_many :questions
end
