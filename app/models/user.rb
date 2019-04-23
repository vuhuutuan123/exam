class User < ApplicationRecord
  # has_many :user_tests
  # has_many :tests , through :user_tests
  has_and_belongs_to_many :tests
  has_secure_password
end
