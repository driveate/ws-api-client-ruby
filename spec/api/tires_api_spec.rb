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

# Unit tests for WsApiClient::TiresApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TiresApi' do
  before do
    # run before each test
    @instance = WsApiClient::TiresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TiresApi' do
    it 'should create an instance of TiresApi' do
      expect(@instance).to be_instance_of(WsApiClient::TiresApi)
    end
  end

  # unit tests for tires_list
  # Returns a list of tires
  # Get a list of tires with a number of matching model modifications
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :width Tire width, mm (e.g. &#x60;195&#x60;)
  # @option opts [Float] :width_min Lower bound for tire width, mm (e.g. &#x60;165&#x60;)
  # @option opts [Float] :width_max Upper bound for tire width, mm (e.g. &#x60;200&#x60;)
  # @option opts [Float] :aspect_ratio Aspect ratio, % (e.g. &#x60;50&#x60;)
  # @option opts [Float] :aspect_ratio_min Lower bound for aspect ratio, % (e.g. &#x60;30&#x60;)
  # @option opts [Float] :aspect_ratio_max Upper bound for aspect ratio, % (e.g. &#x60;70&#x60;)
  # @option opts [Float] :rim_diameter Rim diameter, in (e.g. &#x60;16&#x60;)
  # @option opts [Float] :rim_diameter_min Lower bound for rim diameter, in (e.g. &#x60;13&#x60;)
  # @option opts [Float] :rim_diameter_max Upper bound for rim diameter, in (e.g. &#x60;20&#x60;)
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<Tire>]
  describe 'tires_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @instance.tires_list
      result2 = @instance.tires_list({ :width => 195 })

      expect(result).not_to be_empty
      expect(result2).not_to be_empty
      expect(result2.length).to be < result.length
    end
  end

  # unit tests for tires_read
  # Model modifications matching given tire
  # Get a list of model modifications by tire
  # @param tire Formatted tire size. Use _**&#x60;GET /tires/&#x60;**_ to get possible values (e.g. &#x60;195/50R15&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :width Tire width, mm (e.g. &#x60;195&#x60;)
  # @option opts [Float] :width_min Lower bound for tire width, mm (e.g. &#x60;165&#x60;)
  # @option opts [Float] :width_max Upper bound for tire width, mm (e.g. &#x60;200&#x60;)
  # @option opts [Float] :aspect_ratio Aspect ratio, % (e.g. &#x60;50&#x60;)
  # @option opts [Float] :aspect_ratio_min Lower bound for aspect ratio, % (e.g. &#x60;30&#x60;)
  # @option opts [Float] :aspect_ratio_max Upper bound for aspect ratio, % (e.g. &#x60;70&#x60;)
  # @option opts [Float] :rim_diameter Rim diameter, in (e.g. &#x60;16&#x60;)
  # @option opts [Float] :rim_diameter_min Lower bound for rim diameter, in (e.g. &#x60;13&#x60;)
  # @option opts [Float] :rim_diameter_max Upper bound for rim diameter, in (e.g. &#x60;20&#x60;)
  # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<MakeWithModels>]
  describe 'tires_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @instance.tires_read('195/50R15')
      expect(result).not_to be_empty
    end
  end

end
