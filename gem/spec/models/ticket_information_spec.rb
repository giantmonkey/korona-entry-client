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

# Unit tests for KoronaEntryClient::TicketInformation
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TicketInformation' do
  before do
    # run before each test
    @instance = KoronaEntryClient::TicketInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TicketInformation' do
    it 'should create an instance of TicketInformation' do
      expect(@instance).to be_instance_of(KoronaEntryClient::TicketInformation)
    end
  end
  describe 'test attribute "tag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count_statistically"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ticket_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "entry_signal"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "product_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "receipt_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end