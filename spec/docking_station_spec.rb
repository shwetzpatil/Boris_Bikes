require "docking_station"
require "bike"

describe DockingStation do

 # it 'responds to method release_bike' do
 #   expect(subject).to respond_to(:release_bike)
 # end

 it { is_expected.to respond_to :release_bike }

 it { is_expected.to respond_to(:dock).with(1).argument }

 it { is_expected.to respond_to(:bikes) }
 it { is_expected.to respond_to(:capacity) }

 it "sets default capacity as 20" do
   docking_station = DockingStation.new
   expect(docking_station.capacity).to eq(20)
 end

 it "sets new capacity when given argument" do
   docking_station = DockingStation.new(30)
   expect(docking_station.capacity).to eq(30)
 end

 describe '#release_bike' do
   it 'release the working bike' do
     # expect(subject.release_bike).to eq(Bike.new)
     bike = Bike.new
     # bike = subject.release_bike
     expect(bike).to be_working
   end

   it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
   end

   it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
   end
 end

 describe '#dock' do
   it 'docks bike' do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bikes).to eq subject.bikes # bikes is method from attr_reader
   end

   it 'raises error when dock station is full' do
     # bike = Bike.new
     # subject.dock(bike)
     # bike2 = Bike.new

     subject.capacity.times {subject.dock(Bike.new)}

     expect { subject.dock(Bike.new)}.to raise_error "Dock station is full"
   end
 end
end
