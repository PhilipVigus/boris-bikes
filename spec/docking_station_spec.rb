require 'docking_station'

describe DockingStation do
  # alternate syntax
  # it { is_expected.to respond_to :release_bike }
    it 'releases its bike' do
      expect(subject).to respond_to :release_bike
    end
    it 'Has the docking station realesed a bike' do
      docking = DockingStation.new
      bike = docking.release_bike
    expect(bike.working?).to eq true
  end
end
