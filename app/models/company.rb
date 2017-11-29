class Company < ApplicationRecord

  # name is greater than 2 chars and less than 255
  validates :name, presence: true, length: 3...255

  # Set create date to calculate trial end in future
  before_create :set_trial_status

  def set_trial_status
    self.trial_status = Date.today
  end

end
