=begin
#Wheel Fitment API

#The Wheel Fitment API allows for programmatic access to the database of www.wheel-size.com and its services. Use this API to retrieve information about vehicle fitment database for rims and tires, including OE and option fitments, and plus/minus sizing fitment information. A variety of country and language specific options are available. The coverage of fitment data for vehicles manufactured since 2000 is nearly 100%.  The information about fitment data is updated on a daily basis.

OpenAPI spec version: v1
Contact: info@wheel-size.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module WsApiClient
  class Wheel
    attr_accessor :tire_pressure

    # Formatter rim size (e.g. `7Jx18 ET38`, can be __*`\"\"`*__)
    attr_accessor :rim

    # Rim diameter, in (e.g. `18.0`, can be __*`null`*__)
    attr_accessor :rim_diameter

    # Rim width, in (e.g. `7.0`, can be __*`null`*__)
    attr_accessor :rim_width

    # Rim offset, mm (e.g. `38.0`, can be __*`null`*__)
    attr_accessor :rim_offset

    # Formatted tire size (e.g. `225/55R18`, can be __*`\"\"`*__)
    attr_accessor :tire

    # Tire sizing system (e.g. `metric`, can be __*`null`*__)
    attr_accessor :tire_sizing_system

    # Tire constriction code (e.g. `R`, can be __*`null`*__)
    attr_accessor :tire_construction

    # Tire width, mm (e.g. `225.0`, can be __*`null`*__)
    attr_accessor :tire_width

    # Aspect ratio, % (e.g. `55.0`, can be __*`null`*__)
    attr_accessor :tire_aspect_ratio

    # High flotation tire diameter, in (e.g. `31.0`, can be __*`null`*__)
    attr_accessor :tire_diameter

    # High flotation section width, in (e.g. `10.5`, can be __*`null`*__)
    attr_accessor :tire_section_width

    # Is an old tire with assumed aspect ratio 82%
    attr_accessor :tire_is_82series

    # Load index (e.g. `98`, can be __*`null`*__)
    attr_accessor :load_index

    # Speed rating (e.g. `H`, can be __*`null`*__)
    attr_accessor :speed_index

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tire_pressure' => :'tire_pressure',
        :'rim' => :'rim',
        :'rim_diameter' => :'rim_diameter',
        :'rim_width' => :'rim_width',
        :'rim_offset' => :'rim_offset',
        :'tire' => :'tire',
        :'tire_sizing_system' => :'tire_sizing_system',
        :'tire_construction' => :'tire_construction',
        :'tire_width' => :'tire_width',
        :'tire_aspect_ratio' => :'tire_aspect_ratio',
        :'tire_diameter' => :'tire_diameter',
        :'tire_section_width' => :'tire_section_width',
        :'tire_is_82series' => :'tire_is_82series',
        :'load_index' => :'load_index',
        :'speed_index' => :'speed_index'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tire_pressure' => :'Pressure',
        :'rim' => :'String',
        :'rim_diameter' => :'Float',
        :'rim_width' => :'Float',
        :'rim_offset' => :'Float',
        :'tire' => :'String',
        :'tire_sizing_system' => :'String',
        :'tire_construction' => :'String',
        :'tire_width' => :'Float',
        :'tire_aspect_ratio' => :'Float',
        :'tire_diameter' => :'Float',
        :'tire_section_width' => :'Float',
        :'tire_is_82series' => :'BOOLEAN',
        :'load_index' => :'Integer',
        :'speed_index' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'tire_pressure')
        self.tire_pressure = attributes[:'tire_pressure']
      end

      if attributes.has_key?(:'rim')
        self.rim = attributes[:'rim']
      end

      if attributes.has_key?(:'rim_diameter')
        self.rim_diameter = attributes[:'rim_diameter']
      end

      if attributes.has_key?(:'rim_width')
        self.rim_width = attributes[:'rim_width']
      end

      if attributes.has_key?(:'rim_offset')
        self.rim_offset = attributes[:'rim_offset']
      end

      if attributes.has_key?(:'tire')
        self.tire = attributes[:'tire']
      end

      if attributes.has_key?(:'tire_sizing_system')
        self.tire_sizing_system = attributes[:'tire_sizing_system']
      end

      if attributes.has_key?(:'tire_construction')
        self.tire_construction = attributes[:'tire_construction']
      end

      if attributes.has_key?(:'tire_width')
        self.tire_width = attributes[:'tire_width']
      end

      if attributes.has_key?(:'tire_aspect_ratio')
        self.tire_aspect_ratio = attributes[:'tire_aspect_ratio']
      end

      if attributes.has_key?(:'tire_diameter')
        self.tire_diameter = attributes[:'tire_diameter']
      end

      if attributes.has_key?(:'tire_section_width')
        self.tire_section_width = attributes[:'tire_section_width']
      end

      if attributes.has_key?(:'tire_is_82series')
        self.tire_is_82series = attributes[:'tire_is_82series']
      end

      if attributes.has_key?(:'load_index')
        self.load_index = attributes[:'load_index']
      end

      if attributes.has_key?(:'speed_index')
        self.speed_index = attributes[:'speed_index']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rim.nil?
        invalid_properties.push('invalid value for "rim", rim cannot be nil.')
      end

      if @rim_diameter.nil?
        invalid_properties.push('invalid value for "rim_diameter", rim_diameter cannot be nil.')
      end

      if @rim_width.nil?
        invalid_properties.push('invalid value for "rim_width", rim_width cannot be nil.')
      end

      if @rim_offset.nil?
        invalid_properties.push('invalid value for "rim_offset", rim_offset cannot be nil.')
      end

      if @tire.nil?
        invalid_properties.push('invalid value for "tire", tire cannot be nil.')
      end

      if @tire_sizing_system.nil?
        invalid_properties.push('invalid value for "tire_sizing_system", tire_sizing_system cannot be nil.')
      end

      if @tire_construction.nil?
        invalid_properties.push('invalid value for "tire_construction", tire_construction cannot be nil.')
      end

      if @tire_width.nil?
        invalid_properties.push('invalid value for "tire_width", tire_width cannot be nil.')
      end

      if @tire_aspect_ratio.nil?
        invalid_properties.push('invalid value for "tire_aspect_ratio", tire_aspect_ratio cannot be nil.')
      end

      if @tire_diameter.nil?
        invalid_properties.push('invalid value for "tire_diameter", tire_diameter cannot be nil.')
      end

      if @tire_section_width.nil?
        invalid_properties.push('invalid value for "tire_section_width", tire_section_width cannot be nil.')
      end

      if @tire_is_82series.nil?
        invalid_properties.push('invalid value for "tire_is_82series", tire_is_82series cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rim.nil?
      return false if @rim_diameter.nil?
      return false if @rim_width.nil?
      return false if @rim_offset.nil?
      return false if @tire.nil?
      return false if @tire_sizing_system.nil?
      tire_sizing_system_validator = EnumAttributeValidator.new('String', ['metric', 'flotation', 'lt-metric', 'lt-numeric'])
      return false unless tire_sizing_system_validator.valid?(@tire_sizing_system)
      return false if @tire_construction.nil?
      tire_construction_validator = EnumAttributeValidator.new('String', ['R', 'B', 'D'])
      return false unless tire_construction_validator.valid?(@tire_construction)
      return false if @tire_width.nil?
      return false if @tire_aspect_ratio.nil?
      return false if @tire_diameter.nil?
      return false if @tire_section_width.nil?
      return false if @tire_is_82series.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tire_sizing_system Object to be assigned
    def tire_sizing_system=(tire_sizing_system)
      validator = EnumAttributeValidator.new('String', ['metric', 'flotation', 'lt-metric', 'lt-numeric'])
      unless validator.valid?(tire_sizing_system)
        fail ArgumentError, 'invalid value for "tire_sizing_system", must be one of #{validator.allowable_values}.'
      end
      @tire_sizing_system = tire_sizing_system
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tire_construction Object to be assigned
    def tire_construction=(tire_construction)
      validator = EnumAttributeValidator.new('String', ['R', 'B', 'D'])
      unless validator.valid?(tire_construction)
        fail ArgumentError, 'invalid value for "tire_construction", must be one of #{validator.allowable_values}.'
      end
      @tire_construction = tire_construction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tire_pressure == o.tire_pressure &&
          rim == o.rim &&
          rim_diameter == o.rim_diameter &&
          rim_width == o.rim_width &&
          rim_offset == o.rim_offset &&
          tire == o.tire &&
          tire_sizing_system == o.tire_sizing_system &&
          tire_construction == o.tire_construction &&
          tire_width == o.tire_width &&
          tire_aspect_ratio == o.tire_aspect_ratio &&
          tire_diameter == o.tire_diameter &&
          tire_section_width == o.tire_section_width &&
          tire_is_82series == o.tire_is_82series &&
          load_index == o.load_index &&
          speed_index == o.speed_index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tire_pressure, rim, rim_diameter, rim_width, rim_offset, tire, tire_sizing_system, tire_construction, tire_width, tire_aspect_ratio, tire_diameter, tire_section_width, tire_is_82series, load_index, speed_index].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = WsApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end