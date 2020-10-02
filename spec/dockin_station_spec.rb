require 'docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument}

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    newdockingstation = DockingStation.new
    expect(newdockingstation.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:printdocked)}

end
