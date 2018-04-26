class Aboutus < ActiveRecord::Base
	mount_uploader :main_image, ImageUploader
	mount_uploader :second_image, ImageUploader
	mount_uploader :video_cover, ImageUploader
	mount_uploader :file, ImageUploader
	scope :show, -> {where(show: true)}
end
