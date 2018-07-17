=begin
#Noths

#www.notonthehighstreet.com API client

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Noths::OrderDetail
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderDetail' do
  before do
    # run before each test
    @instance = Noths::OrderDetail.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderDetail' do
    it 'should create an instance of OrderDetail' do
      expect(@instance).to be_instance_of(Noths::OrderDetail)
    end
  end
  describe 'test attribute "tracking_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "parcel_tracking_url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

