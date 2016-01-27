class BabySitterPay
  def initialize start, endtime
    @start, @endtime = start, endtime
    @bedtime = 22
  end

  def pay
    (12*waking_hours) + (8*midnight_hours) + (16*morning_hours)
  end

  def valid?
    valid_schedule?
  end

  def valid_schedule?
    @start >= 17 && @endtime <= 28
  end

  def waking_hours
    @bedtime - @start
  end

  def midnight_hours
    24 - @bedtime
  end

  def morning_hours
    @endtime - 24
  end
end