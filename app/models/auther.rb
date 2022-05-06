class Auther < ApplicationRecord
	has_many :books, dependent: :destroy
end
