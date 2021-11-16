class Bug < ApplicationRecord
	validates_presence_of :title, :description, :bugtype
	validates_uniqueness_of :description
end
