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

# Unit tests for KoronaEntryClient::TicketPersonalization
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TicketPersonalization' do
  before do
    # run before each test
    @instance = KoronaEntryClient::TicketPersonalization.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TicketPersonalization' do
    it 'should create an instance of TicketPersonalization' do
      expect(@instance).to be_instance_of(KoronaEntryClient::TicketPersonalization)
    end
  end
  describe 'test attribute "firstname"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lastname"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "customer_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end