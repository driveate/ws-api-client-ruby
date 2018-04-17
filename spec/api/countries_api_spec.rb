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

# Unit tests for WsApiClient::CountriesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CountriesApi' do
  before do
    # run before each test
    @instance = WsApiClient::CountriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CountriesApi' do
    it 'should create an instance of CountriesApi' do
      expect(@instance).to be_instance_of(WsApiClient::CountriesApi)
    end
  end

  # unit tests for countries_list
  # Returns a list of countries
  # List of possible countries to be used in any other API method. Indended to be used in case you want to restrict results for several countries.
  # @param [Hash] opts the optional parameters
  # @return [Array<Country>]
  describe 'countries_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
