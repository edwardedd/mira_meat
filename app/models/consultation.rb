class Consultation < ActiveRecord::Base
  after_create :notify_admin
def notify_admin
  UserMailer.consultation_email(self).deliver_now
end
end
