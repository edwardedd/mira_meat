class Order < ActiveRecord::Base
  after_create :notify_admin
def notify_admin
  UserMailer.order_email(self).deliver_now
end
end
