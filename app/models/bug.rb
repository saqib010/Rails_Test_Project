class Bug < ApplicationRecord
	validates_presence_of :title, :bugtype
	validates_uniqueness_of :title
	mount_uploader :screenshot, ScrenshotsUploader
	extend FriendlyId
	friendly_id :title, use: :slugged
	enum bugtype:{feature:false,bug:true}

	belongs_to :project
  	belongs_to :user
end
