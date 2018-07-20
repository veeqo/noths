# frozen_string_literal: true

# Unit tests for Noths::Error
describe 'Error' do
  let(:instance) { Noths::Error.new }

  describe 'test an instance of Error' do
    it 'should create an instance of Error' do
      expect(instance).to be_instance_of(Noths::Error)
    end
  end
  describe 'test attribute "code"' do
    it 'should work'
  end

  describe 'test attribute "title"' do
    it 'should work'
  end

end

