class Vacancy < ActiveRecord::Base
  scope :show, -> {where(show: true)}
end
