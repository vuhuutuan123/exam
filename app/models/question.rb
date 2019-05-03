class Question < ApplicationRecord
  belongs_to :test, optional: true
  has_many :answers, dependent: :destroy, inverse_of: :question, autosave: true
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }
end
