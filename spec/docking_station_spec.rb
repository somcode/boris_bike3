require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    # it 'releases a bike' do
    #   bike = Bike.new
    #   subject.dock(bike)
    #   # we want to release the bike we docked
    #   expect(subject.release_bike).to eq bike
    #   #expect(subject).to respond_to(:release_bike)
    #   #it { is_expected.to respond_to(:release_bike)}
    # end
  end

    it 'released bike is working?' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    #it { is_expected.to respond_to(:dock).with(1).argument }
     it 'docks something'do
       bike = Bike.new
       expect(subject.dock(bike)).to eq(bike)
     end
    #it { is_expected.to respond_to(:bike) }
    it 'returns docked bike' do
      bike = Bike.new
      subject.dock(bike)
      # we need to return the bike we just docked
      expect(subject.bike).to eq(bike)
    end

end
