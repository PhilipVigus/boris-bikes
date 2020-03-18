require 'bike'

describe Bike do
  it 'tells you whether it is working' do
    expect(subject).to respond_to :working?
  end
end