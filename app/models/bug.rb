class Bug < ApplicationRecord
	validates_presence_of :title, :description, :bugtype
	validates_uniqueness_of :title
	mount_uploader :screenshot, ScrenshotsUploader
	

	enum bugtype:{feature:false,bug:true}
end
