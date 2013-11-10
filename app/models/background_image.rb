class BackgroundImage < ActiveRecord::Base
	default_scope order: 'background_images.priority ASC'
	
	def self.active
		BackgroundImage.where('priority > ?', 0)
	end

	mount_uploader :image, BackgroundImageUploader

	validates_presence_of :priority, :image
end
