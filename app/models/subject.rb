class Subject < ApplicationRecord
  has_many :std_subjects
  has_many :standard, through: :std_subjects
end
