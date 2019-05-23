class Name < ApplicationRecord
  has_many :students, dependent: :destroy
end
