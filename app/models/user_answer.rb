class UserAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user_test
end
