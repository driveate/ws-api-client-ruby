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

# Unit tests for WsApiClient::SearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @instance = WsApiClient::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@instance).to be_instance_of(WsApiClient::SearchApi)
    end
  end

  # unit tests for search_by_hf_tire_list
  # Find models matching given high flotation tire
  # Get a list of model modifications that match the given tire size in high flotation sizing system
  # @param tire_diameter Tire diameter, in (e.g. &#x60;31&#x60;)
  # @param tire_section_width Tire section width, in (e.g. &#x60;10.5&#x60;)
  # @param rim_diameter_hf Rim diameter, in (e.g. &#x60;15&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<MakeWithModels>]
  describe 'search_by_hf_tire_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_by_model_list
  # Find OE and option fitments by model/year/trim
  # Find OE and option fitments that match the given manufacturer, model, year and trim.  **It&#39;s an alias** for _**&#x60;GET /vehicles/&#x60;**_ method
  # @param make Manufacturer slug name, use _**&#x60;GET /makes/&#x60;**_ to get possible values (e.g. &#x60;mitsubishi&#x60;)
  # @param model Model slug name, use _**&#x60;GET /models/&#x60;**_ to get possible values (e.g. &#x60;outlander&#x60;)
  # @param year You can use _**&#x60;GET /years/&#x60;**_ to get possible years (e.g. &#x60;2015&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :trim Use *&#x60;slug&#x60;* from _**&#x60;GET /trims/&#x60;**_ methods here. (e.g. &#x60;2.0+GG2W&#x60;)
  # @option opts [BOOLEAN] :only_oem Show only original equipment wheels
  # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
  # @return [Array<Vehicle>]
  describe 'search_by_model_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_by_rim_list
  # Find models matching given rim parameters
  # Get a list of model modifications that match the given rim parameters, grouped by manufacturer.  It&#39;s an alias for _**&#x60;GET /bolt-patterns/{bolt_pattern}/&#x60;**_        method with given path and query parameters.
  # @param bolt_pattern Bolt pattern combines number of stud holes and pitch circle diameter. Use _**&#x60;GET /bolt-patterns/&#x60;**_ to get possible values (e.g. &#x60;5x105&#x60;)
  # @param rim_diameter Rim diameter, in (e.g. &#x60;16&#x60;)
  # @param rim_width Rim width, in (e.g. &#x60;7&#x60;)
  # @param [Hash] opts the optional parameters
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
  describe 'search_by_rim_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_by_tire_list
  # Find models matching given tire parameters
  # Get a list of model modifications matching given tire, grouped by manufacturer.  It&#39;s an alias for _**&#x60;GET /tire/{tire}/&#x60;**_ method  (tire configuration is combined of required tire width, aspect ratio and rim diameter).
  # @param tire_width Tire width, mm (e.g. &#x60;195&#x60;)
  # @param aspect_ratio Aspect ratio, % (e.g. &#x60;50&#x60;)
  # @param rim_diameter Rim diameter, in (e.g. &#x60;16&#x60;)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
  # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
  # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
  # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
  # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
  # @return [Array<MakeWithModels>]
  describe 'search_by_tire_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end