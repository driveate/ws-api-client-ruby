=begin
#Wheel Fitment API

#The Wheel Fitment API allows for programmatic access to the database of www.wheel-size.com and its services. Use this API to retrieve information about vehicle fitment database for rims and tires, including OE and option fitments, and plus/minus sizing fitment information. A variety of country and language specific options are available. The coverage of fitment data for vehicles manufactured since 2000 is nearly 100%.  The information about fitment data is updated on a daily basis.

OpenAPI spec version: v1
Contact: info@wheel-size.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for WsApiClient::RimAgregation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RimAgregation' do
  before do
    # run before each test
    @instance = WsApiClient::RimAgregation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RimAgregation' do
    it 'should create an instance of RimAgregation' do
      expect(@instance).to be_instance_of(WsApiClient::RimAgregation)
    end
  end
  describe 'test attribute "diameter"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "offset"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "width"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
