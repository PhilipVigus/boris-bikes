require 'docking_station'

describe DockingStation do
  # alternate syntax
  # it { is_expected.to respond_to :release_bike }
    it 'releases its bike' do
      expect(subject).to respond_to :release_bike
    end
end