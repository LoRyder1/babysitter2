class BabySitterPay
  def initialize start, endtime
    @start, @endtime = start, endtime
  end

  def valid?
    valid_schedule?
  end

  def valid_schedule?
    @start >= 17 
  end
end