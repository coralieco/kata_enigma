require 'spec_helper'
require_relative '../lib/plugboard'

RSpec.describe "Plugboard" do
  let(:plugboard) { Plugboard.new }

  describe '#encipher' do
    context 'with letter not included in plugboard' do
      subject { plugboard.encipher('a') }
      it { is_expected.to eq 'a' }
    end
    context 'with letter included in plugboard' do
      subject { plugboard.encipher('t') }
      it { is_expected.to eq 'y' }
    end
  end
end
