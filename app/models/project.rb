class Project < ApplicationRecord
	validates_presence_of :name
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_many :bugs, dependent: :delete_all
  	has_many :user, through: :bugs
end
