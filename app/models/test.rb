class Test < ApplicationRecord
  has_many :user_tests
  has_many :users , through: :user_tests
  belongs_to :topic
  has_many :questions, dependent: :destroy, inverse_of: :test, autosave: true
  accepts_nested_attributes_for :questions, allow_destroy: true, :reject_if => lambda { |a| a[:content].blank? }
end
