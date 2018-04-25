class History < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	scope :show, -> {where(show: true)}
	scope :year,   -> (year) { where(year: year)}
end
