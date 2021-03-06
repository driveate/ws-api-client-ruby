=begin
#Wheel Fitment API

#The Wheel Fitment API allows for programmatic access to the database of www.wheel-size.com and its services. Use this API to retrieve information about vehicle fitment database for rims and tires, including OE and option fitments, and plus/minus sizing fitment information. A variety of country and language specific options are available. The coverage of fitment data for vehicles manufactured since 2000 is nearly 100%.  The information about fitment data is updated on a daily basis.

OpenAPI spec version: v1
Contact: info@wheel-size.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module WsApiClient
  class TiresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
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
    def tires_list(opts = {})
      data, _status_code, _headers = tires_list_with_http_info(opts)
      data
    end

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
    # @return [Array<(Array<Tire>, Fixnum, Hash)>] Array<Tire> data, response status code and response headers
    def tires_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiresApi.tires_list ...'
      end
      # resource path
      local_var_path = '/tires/'

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'width_min'] = opts[:'width_min'] if !opts[:'width_min'].nil?
      query_params[:'width_max'] = opts[:'width_max'] if !opts[:'width_max'].nil?
      query_params[:'aspect_ratio'] = opts[:'aspect_ratio'] if !opts[:'aspect_ratio'].nil?
      query_params[:'aspect_ratio_min'] = opts[:'aspect_ratio_min'] if !opts[:'aspect_ratio_min'].nil?
      query_params[:'aspect_ratio_max'] = opts[:'aspect_ratio_max'] if !opts[:'aspect_ratio_max'].nil?
      query_params[:'rim_diameter'] = opts[:'rim_diameter'] if !opts[:'rim_diameter'].nil?
      query_params[:'rim_diameter_min'] = opts[:'rim_diameter_min'] if !opts[:'rim_diameter_min'].nil?
      query_params[:'rim_diameter_max'] = opts[:'rim_diameter_max'] if !opts[:'rim_diameter_max'].nil?
      query_params[:'brands'] = opts[:'brands'] if !opts[:'brands'].nil?
      query_params[:'brands_exclude'] = opts[:'brands_exclude'] if !opts[:'brands_exclude'].nil?
      query_params[:'countries'] = opts[:'countries'] if !opts[:'countries'].nil?
      query_params[:'countries_exclude'] = opts[:'countries_exclude'] if !opts[:'countries_exclude'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['user_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Tire>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiresApi#tires_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
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
    # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn,zh-tw&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
    # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
    # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
    # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
    # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
    # @return [Array<MakeWithModels>]
    def tires_read(tire, opts = {})
      data, _status_code, _headers = tires_read_with_http_info(tire, opts)
      data
    end

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
    # @option opts [String] :lang Use this parameter anywhere in the API to get *&#x60;name&#x60;* field translation of the following objects: **&#x60;Make&#x60;**, **&#x60;Model&#x60;**, **&#x60;Market&#x60;**. Across the *&#x60;name&#x60;* this objects will have *&#x60;name_en&#x60;* field with original english name. By default &#x60;en&#x60; language is used.  Available languages: &#x60;en,de,ru,es,pt,fr,ja,zh-cn,zh-tw&#x60;. Currently translation works for chinese &#x60;zh-cn&#x60; language only
    # @option opts [String] :brands Show information only for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;mitsubishi,nissan,toyota&#x60;)
    # @option opts [String] :brands_exclude Don&#39;t show information for specified manufacturers. Use _**&#x60;GET /makes/&#x60;**_ method to get the full list. (e.g. &#x60;geely,great-wall&#x60;)
    # @option opts [String] :countries Show information for local manufacturers from specified countries only. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;us,gb,jp&#x60;)
    # @option opts [String] :countries_exclude Don&#39;t show information for local manufacturers from specified countries. Use _**&#x60;GET /countries/&#x60;**_ method to get the full list of countries. (e.g. &#x60;ru,ua&#x60;)
    # @return [Array<(Array<MakeWithModels>, Fixnum, Hash)>] Array<MakeWithModels> data, response status code and response headers
    def tires_read_with_http_info(tire, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiresApi.tires_read ...'
      end
      # verify the required parameter 'tire' is set
      if @api_client.config.client_side_validation && tire.nil?
        fail ArgumentError, "Missing the required parameter 'tire' when calling TiresApi.tires_read"
      end
      # resource path
      local_var_path = '/tires/{tire}/'.sub('{' + 'tire' + '}', tire.to_s)

      # query parameters
      query_params = {}
      query_params[:'width'] = opts[:'width'] if !opts[:'width'].nil?
      query_params[:'width_min'] = opts[:'width_min'] if !opts[:'width_min'].nil?
      query_params[:'width_max'] = opts[:'width_max'] if !opts[:'width_max'].nil?
      query_params[:'aspect_ratio'] = opts[:'aspect_ratio'] if !opts[:'aspect_ratio'].nil?
      query_params[:'aspect_ratio_min'] = opts[:'aspect_ratio_min'] if !opts[:'aspect_ratio_min'].nil?
      query_params[:'aspect_ratio_max'] = opts[:'aspect_ratio_max'] if !opts[:'aspect_ratio_max'].nil?
      query_params[:'rim_diameter'] = opts[:'rim_diameter'] if !opts[:'rim_diameter'].nil?
      query_params[:'rim_diameter_min'] = opts[:'rim_diameter_min'] if !opts[:'rim_diameter_min'].nil?
      query_params[:'rim_diameter_max'] = opts[:'rim_diameter_max'] if !opts[:'rim_diameter_max'].nil?
      query_params[:'lang'] = opts[:'lang'] if !opts[:'lang'].nil?
      query_params[:'brands'] = opts[:'brands'] if !opts[:'brands'].nil?
      query_params[:'brands_exclude'] = opts[:'brands_exclude'] if !opts[:'brands_exclude'].nil?
      query_params[:'countries'] = opts[:'countries'] if !opts[:'countries'].nil?
      query_params[:'countries_exclude'] = opts[:'countries_exclude'] if !opts[:'countries_exclude'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['user_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<MakeWithModels>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiresApi#tires_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
