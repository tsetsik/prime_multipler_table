require 'spec_helper'

RSpec.describe PrimeMultiplier::FibunachiGenerator do
  subject do
    described_class.new
  end

  context 'when primes are generated by valid num' do
    let(:num) { 7 }

    it { expect(subject.call(num)).to eq [0, 1, 1, 2, 3, 5, 8] }
  end

  context 'when invalid number is used' do
    let(:num) { 0 }

    it { expect(subject.call(num)).to be_an Array }
    it { expect(subject.call(num)).to be_empty }
  end
end
