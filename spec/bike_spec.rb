require './lib/bike.rb'
describe Bike do
  it { is_expected.to respond_to(:working?) }
  it 'reports if bike is broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
