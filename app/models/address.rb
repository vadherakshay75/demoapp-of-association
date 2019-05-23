class Address < ApplicationRecord
  has_many :students, dependent: :destroy
end
