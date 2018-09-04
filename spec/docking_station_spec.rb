require "docking_station"
require "bike"

describe DockingStation do
 # it 'releases bike' do
 #   expect((DockingStation.new).release_bike).to eq("Bike released!")
 # end
 it { is_expected.to respond_to :release_bike }

 it 'release the working bike' do
   # expect(subject.release_bike).to eq(Bike.new)
   bike = subject.release_bike
   expect(bike).to be_working
 end
end
