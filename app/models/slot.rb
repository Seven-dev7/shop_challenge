class Slot < ApplicationRecord
  belongs_to :shop

  validate :end_time_after_start_time

  enum week_day: {
    monday: 0,
    tuesday: 1,
    wednesday: 2,
    thursday: 3,
    friday: 4,
    saturday: 5,
    sunday: 6
  }

  private

  def end_time_after_start_time
    return unless end_time < start_time

    errors.add(:end_time, :after_start_time)
  end
end
