require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :broken }

  describe '#initialize' do
    it 'initially creates a bike thats not broken' do
      expect(subject.broken).to be_falsy
    end
  end
  describe '#working?' do
    it 'returns true if bike is working' do
      expect(subject).to be_working
    end
    it 'returns false if bike is not working' do
      subject.report_broken
      expect(subject).not_to be_working
    end
  end
  describe '#report_broken' do
    it 'reports the broken bike' do
      subject.report_broken
      expect(subject.broken).to eq(true)
    end
  end

end
