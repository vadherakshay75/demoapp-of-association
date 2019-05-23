class Student < ApplicationRecord
  belongs_to :address
  belongs_to :name
  belongs_to :standard
  has_and_belongs_to_many :mentors, dependent: :destroy
  has_one :parent, dependent: :destroy
  has_one :std_principal, dependent: :destroy
  has_one :principal, through: :std_principal, dependent: :destroy
end
