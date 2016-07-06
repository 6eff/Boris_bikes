require 'docking_station'

describe DockingStation do
		it {expect(DockingStation.new).to respond_to(:release_bike)}
    it {expect(subject.release_bike).to be_a(Bike)}
    it {expect(subject.release_bike).to be_working}
    it {expect(subject).to respond_to(:dock)}
    # it {expect(subject.dock).to change{DockingStation.stored_bikes}.from(0).to(1)}
    it {bike = Bike.new; expect{subject.dock(bike)}.to change{subject.bike}}
    it {expect(subject).to respond_to(:bikes)}
    it {expect{subject.bikes}.to output.to_stdout}
end
