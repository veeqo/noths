# frozen_string_literal: true

# Unit tests for Noths::User
describe 'User' do
  let(:instance) { Noths::User.new }

  describe 'test an instance of User' do
    it 'should create an instance of User' do
      expect(instance).to be_instance_of(Noths::User)
    end
  end
  describe 'test attribute "name"' do
    it 'should work'
  end

  describe 'test attribute "telephone"' do
    it 'should work'
  end

  describe 'test attribute "telephone_country_code"' do
    it 'should work'
  end

end

