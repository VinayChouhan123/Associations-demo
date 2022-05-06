class Account < ApplicationRecord
  belongs_to :supplier
  has_one :accounthistory
end
