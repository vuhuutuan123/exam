class Test < ApplicationRecord
  has_many :user_tests
  has_many :users , through :user_tests
  belongs_to :topic
  has_many :questions
end
