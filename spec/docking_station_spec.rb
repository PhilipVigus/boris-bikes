require 'docking_station'

describe DockingStation do
  # alternate syntax
  # it { is_expected.to respond_to :release_bike }
    it 'releases its bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'Has the docking station realesed a bike' do
      docking = DockingStation.new
      bike = Bike.new
      docking.dock(bike)
      expect(docking.release_bike).to eq bike
    end

    it 'allows you to dock a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'allows you to see the docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq([bike])
    end

    it 'checks to see if a bike is available, if not raises error' do
      expect {subject.release_bike}.to raise_error 'No bikes available!'
    end

    it 'checks to see if a bike is already present when you try to dock a bike, and stops you if it is' do
      20.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error 'No space available in dock!'
    end



end
