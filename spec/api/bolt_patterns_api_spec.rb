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

# Unit tests for WsApiClient::BoltPatternsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BoltPatternsApi' do
  before do
    # run before each test
    @instance = WsApiClient::BoltPatternsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BoltPatternsApi' do
    it 'should create an instance of BoltPatternsApi' do
      expect(@instance).to be_instance_of(WsApiClient::BoltPatternsApi)
    end
  end

  # unit tests for bolt_patterns_list
  # Get list of bolt patterns
  # A list of possible bolt patterns with the number of matching model modifications
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :stud Number of stud holes (e.g. &#x60;5&#x60;)
  # @option opts [Float] :stud_min Lower bound for number of stud holes (e.g. &#x60;4&#x60;)
  # @option opts [Float] :stud_max Upper bound for number of stud holes (e.g. &#x60;7&#x60;)
  # @option opts [Float] :pcd Pitch circle diameter, mm (e.g. &#x60;115&#x60;)
  # @option opts [Float] :pcd_min Lower bound for pitch circle diameter, mm (e.g. &#x60;105&#x60;)
  # @option opts [Float] :pcd_max Upper bound for pitch circle diameter, mm (e.g. &#x60;135&#x60;)
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<BoltPattern>]
  describe 'bolt_patterns_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @instance.bolt_patterns_list
      result2 = @instance.bolt_patterns_list({ :stud => 5 })

      expect(result).not_to be_empty
      expect(result2).not_to be_empty
      expect(result2.length).to be < result.length
    end
  end

  # unit tests for bolt_patterns_read
  # Model modifications by bolt pattern
  # Get a list of model modifications matching to the given bolt pattern
  # @param bolt_pattern Bolt pattern combines number of stud holes and pitch circle diameter. Use _**&#x60;GET /bolt-patterns/&#x60;**_ to get possible values (e.g. &#x60;5x105&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :rim_diameter Rim diameter, in (e.g. &#x60;16&#x60;)
  # @option opts [Float] :rim_width Rim width, in (e.g. &#x60;7&#x60;)
  # @option opts [Float] :offset Rim offset, mm (e.g. &#x60;40&#x60;)
  # @option opts [Float] :offset_min Lower bound for rim offset, mm (e.g. &#x60;35&#x60;)
  # @option opts [Float] :offset_max Upper bound for rim offset, mm (e.g. &#x60;45&#x60;)
  # @option opts [Float] :cb Centre bore value, mm (e.g. &#x60;60&#x60;)
  # @option opts [Float] :cb_min Lower bound for centre bore value, mm (e.g. &#x60;55&#x60;)
  # @option opts [Float] :cb_max Upper bound for centre bore value, mm (e.g. &#x60;65&#x60;)
  # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<MakeWithModels>]
  describe 'bolt_patterns_read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @instance.bolt_patterns_read('5x105')
      result2 = @instance.bolt_patterns_read('5x105', { :brands => 'chevrolet' })

      expect(result).not_to be_empty
      expect(result2).not_to be_empty
      expect(result2.length).to be < result.length
    end
  end

end
