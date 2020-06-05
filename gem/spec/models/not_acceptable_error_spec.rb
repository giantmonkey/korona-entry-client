=begin
#KORONA.entry API v1

#Our api provides access to our entry services

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KoronaEntryClient::NotAcceptableError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NotAcceptableError' do
  before do
    # run before each test
    @instance = KoronaEntryClient::NotAcceptableError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotAcceptableError' do
    it 'should create an instance of NotAcceptableError' do
      expect(@instance).to be_instance_of(KoronaEntryClient::NotAcceptableError)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BEFORETIME", "DENIED", "DOESNTEXIST", "EXHAUSTED", "INVALID", "LOCKED", "SUSPENDED", "TIMEUP", "TIME_QUOTA_OVERDRAWN", "SUCCESS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.response = value }.not_to raise_error
      # end
    end
  end

end