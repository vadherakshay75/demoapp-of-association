class StdPrincipal < ApplicationRecord
  belongs_to :student
  has_one :principal
end
