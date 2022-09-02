class WeekDays
  def order
    days.rotate(current_day)
  end

  private

  def days
    @days = Date::DAYNAMES
  end

  def current_day
    Date.today.wday
  end
end
