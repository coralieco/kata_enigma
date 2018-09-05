require 'spec_helper'
require_relative '../lib/machine'

RSpec.describe "Machine" do
  let(:machine) { Machine.new }

  describe 'with letters not included in the plugboard' do
    subject { machine.encipher('aaa') }
    it do
      is_expected.to eq('aaa')
    end
  end

  describe 'with letters included in the plugboard' do
    subject { machine.encipher('yyy') }
    it do
      is_expected.to eq('ttt')
    end
  end
end
