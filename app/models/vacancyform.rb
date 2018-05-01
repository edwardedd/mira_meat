class Vacancyform < ActiveRecord::Base
  mount_uploader :file, ImageUploader
  after_create :notify_admin
  def notify_admin
    UserMailer.vacancyform_email(self).deliver_now
  end
end
