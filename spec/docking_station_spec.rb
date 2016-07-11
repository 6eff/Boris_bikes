require './lib/docking_station.rb'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock_bike).with(1).argument }

#   describe '#release_bike' do
#   # it 'raises an error when there are no bikes' do
#   #   bike = double('bike', :broken? => false)
#   #   subject.dock_bike(bike)
#   #   subject.release_bike(bike)
#   #   expect { subject.release_bike(bike) }.to raise_error 'No bikes available'
#   # end
#
#   it 'releases the same bike' do
#     bike = double('bike', :broken? => false)
#     subject.dock_bike(bike)
#     expect(subject.release_bike(bike)).to eq bike
#   end
# end

  # it 'releases working bikes' do
  #   bike = double('bike', :broken? => false)
  #   subject.dock_bike bike
  #   expect(subject.release_bike(bike)).to be bike
  # end
  # it 'does not release a broken bike' do
  #   bike = double('bike', :broken? => true)
  #   subject.dock_bike bike
  #   expect{subject.release_bike(bike)}.to raise_error('No bikes available')
  # end

describe "#dock_bike" do
  # it 'raises an error when docking station is full' do
  #   subject.class::DEFAULT_CAPACITY.times {subject.dock_bike double :bike}
  #   expect { subject.dock_bike double(:bike) }.to raise_error 'Docking Station is full'
  # end

  it 'docks bike' do
    bike = double(:bike)
    expect(subject.dock_bike(bike)).to eq [bike]
  end
end

  # it 'returns docked bikes' do
  #   subject.dock_bike double(:bike)
  #   expect(subject.bikes).not_to be_empty
  # end
end
