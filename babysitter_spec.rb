require_relative 'babysitter'

describe 'BabySitterPay' do
  before(:each) do
    @sitting = BabySitterPay.new(17,28)
    @shortsitting = BabySitterPay.new(18,28)
    @earlystart = BabySitterPay.new(16,28)
    @lateend = BabySitterPay.new(17,29)
  end

  it 'sitting starts no earlier than 5pm' do
    expect(@sitting.valid?).to eq true
  end

  it 'start time is greater than 5pm' do
    expect(@sitting.valid_schedule?).to eq true
  end

  it 'start time before 5pm is invalid' do
    expect(@earlystart.valid_schedule?).to eq false
  end

  it 'endtime is less than 4am is valid' do
    expect(@sitting.valid_schedule?).to eq true 
  end

  it 'endtime greater than 4am is invalid' do
    expect(@lateend.valid_schedule?).to eq false
  end

  it 'count hours waking hours' do
    expect(@sitting.waking_hours).to eq 5
  end

  it 'count hours to midnight' do
    expect(@sitting.midnight_hours).to eq 2
  end

  it 'count hours after midnight' do
    expect(@sitting.morning_hours).to eq 4
  end

  it 'pay for sitting should be 140' do
    expect(@sitting.pay).to eq 140
  end

  it 'pay for shortsitting should be 128' do
    expect(@shortsitting.pay).to eq 128
  end
end
