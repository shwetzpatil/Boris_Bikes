require "docking_station"

describe DockingStation do
 # it 'releases bike' do
 #   expect((DockingStation.new).release_bike).to eq("Bike released!")
 # end
 it { is_expected.to respond_to :release_bike }
end
