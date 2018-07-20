# frozen_string_literal: true

# Unit tests for Noths::Money
describe 'Money' do
  let(:instance) { Noths::Money.new }

  describe 'test an instance of Money' do
    it 'should create an instance of Money' do
      expect(instance).to be_instance_of(Noths::Money)
    end
  end
  describe 'test attribute "cents"' do
    it 'should work'
  end

  describe 'test attribute "currency"' do
    it 'should work'
  end

end

