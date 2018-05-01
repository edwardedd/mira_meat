class Article < ActiveRecord::Base
	mount_uploader :main_image, ImageUploader
	mount_uploader :second_image, ImageUploader
	scope :show, -> {where(show: true)}
	validates :url_fragment, presence: true, uniqueness: {case_sensitive: false}
	before_validation :initialize_url_fragment

	def initialize_url_fragment
    return true if url_fragment.present?
    I18n.with_locale :ru do
        self.url_fragment = title.parameterize
    end
	end
	def to_param
			 url_fragment
	 end
end
