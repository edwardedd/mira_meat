class Main < ActiveRecord::Base
  mount_uploader :video_cover, ImageUploader
end
