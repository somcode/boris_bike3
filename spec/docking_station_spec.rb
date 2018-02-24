require 'docking_station'

describe DockingStation do
  describe "#release_bike" do
    it 'should respond to relesea bike' do
      expect(subject).to respond_to(:release_bike)
    #it { is_expected.to respond_to(:release_bike)}
    end
  end
    it 'released bike is working?' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
end
