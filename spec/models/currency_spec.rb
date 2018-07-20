# frozen_string_literal: true

# Unit tests for Noths::Currency
describe 'Currency' do
  let(:instance) { Noths::Currency.new }

  describe 'test an instance of Currency' do
    it 'should create an instance of Currency' do
      expect(instance).to be_instance_of(Noths::Currency)
    end
  end
  describe 'test attribute "subunit_to_unit"' do
    it 'should work'
  end

  describe 'test attribute "symbol"' do
    it 'should work'
  end

  describe 'test attribute "html_entity"' do
    it 'should work'
  end

  describe 'test attribute "iso_code"' do
    it 'should work'
  end

end

