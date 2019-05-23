class Standard < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :std_subjects, dependent: :destroy
  has_many :subjects, through: :std_subjects, dependent: :destroy
end
