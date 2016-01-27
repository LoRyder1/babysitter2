require_relative 'babysitter'

describe 'BabySitterPay' do
  before(:each) do
    @sitting = BabySitterPay.new(17,28)
  end

  it 'sitting starts no earlier than 5pm' do
    expect(@sitting.valid?).to eq true
  end

  it 'start time is greater than 5pm' do
    expect(@sitting.valid_schedule?).to eq true
  end
end