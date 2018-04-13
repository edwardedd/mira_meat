class Wholesale < ActiveRecord::Base
	mount_uploader :main_image, ImageUploader
	mount_uploader :second_image, ImageUploader
end
