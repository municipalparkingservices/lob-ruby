=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)? 

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module Lob
  # Properties that the letters in your Creative should have.
  class LetterDetailsWritable
    # Specifies the location of the address information that will show through the double-window envelope. 
    attr_accessor :address_placement

    # A single-element array containing an existing card id in a string format. See [cards](#tag/Cards) for more information.
    attr_accessor :cards

    # Set this key to `true` if you would like to print in color. Set to `false` if you would like to print in black and white.
    attr_accessor :color

    # Set this attribute to `true` for double sided printing, or `false` for for single sided printing. Defaults to `true`.
    attr_accessor :double_sided

    # Add an extra service to your letter.
    attr_accessor :extra_service

    attr_accessor :mail_type

    attr_accessor :return_envelope

    # Accepts an envelope ID for any customized envelope with available inventory.
    attr_accessor :custom_envelope

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
        :'address_placement' => :'address_placement',
        :'cards' => :'cards',
        :'color' => :'color',
        :'double_sided' => :'double_sided',
        :'extra_service' => :'extra_service',
        :'mail_type' => :'mail_type',
        :'return_envelope' => :'return_envelope',
        :'custom_envelope' => :'custom_envelope'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address_placement' => :'String',
        :'cards' => :'Array<String>',
        :'color' => :'Boolean',
        :'double_sided' => :'Boolean',
        :'extra_service' => :'String',
        :'mail_type' => :'MailType',
        :'return_envelope' => :'Boolean',
        :'custom_envelope' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'cards',
        :'custom_envelope'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Lob::LetterDetailsWritable` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Lob::LetterDetailsWritable`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address_placement')
        self.address_placement = attributes[:'address_placement']
      else
        self.address_placement = 'top_first_page'
      end

      if attributes.key?(:'cards')
        if (value = attributes[:'cards']).is_a?(Array)
          self.cards = value
        end
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'double_sided')
        self.double_sided = attributes[:'double_sided']
      else
        self.double_sided = true
      end

      if attributes.key?(:'extra_service')
        self.extra_service = attributes[:'extra_service']
      end

      if attributes.key?(:'mail_type')
        self.mail_type = attributes[:'mail_type']
      else
        self.mail_type = 'usps_first_class'
      end

      if attributes.key?(:'return_envelope')
        self.return_envelope = attributes[:'return_envelope']
      else
        self.return_envelope = false
      end

      if attributes.key?(:'custom_envelope')
        self.custom_envelope = attributes[:'custom_envelope']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cards.length > 1
        invalid_properties.push('invalid value for "cards", number of items must be less than or equal to 1.')
      end

      if @cards.length < 0
        invalid_properties.push('invalid value for "cards", number of items must be greater than or equal to 0.')
      end

      if @color.nil?
        invalid_properties.push('invalid value for "color", color cannot be nil.')
      end

      pattern = Regexp.new(/^env_[a-zA-Z0-9]+$/)
      if !@custom_envelope.nil? && @custom_envelope !~ pattern
        invalid_properties.push("invalid value for \"custom_envelope\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      address_placement_validator = EnumAttributeValidator.new('String', ["top_first_page", "insert_blank_page", "bottom_first_page_center", "bottom_first_page"])
      return false unless address_placement_validator.valid?(@address_placement)
      return false if @cards.length > 1
      return false if @cards.length < 0
      return false if @color.nil?
      return false if !@custom_envelope.nil? && @custom_envelope !~ Regexp.new(/^env_[a-zA-Z0-9]+$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address_placement Object to be assigned
    def address_placement=(address_placement)
      validator = EnumAttributeValidator.new('String', ["top_first_page", "insert_blank_page", "bottom_first_page_center", "bottom_first_page"])
      unless validator.valid?(address_placement)
        fail ArgumentError, "invalid value for \"address_placement\", must be one of #{validator.allowable_values}."
      end
      @address_placement = address_placement
    end

    # Custom attribute writer method with validation
    # @param [Object] cards Value to be assigned
    def cards=(cards)
      if cards.length > 1
        fail ArgumentError, 'invalid value for "cards", number of items must be less than or equal to 1.'
      end

      if cards.length < 0
        fail ArgumentError, 'invalid value for "cards", number of items must be greater than or equal to 0.'
      end

      @cards = cards
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_envelope Value to be assigned
    def custom_envelope=(custom_envelope)
      pattern = Regexp.new(/^env_[a-zA-Z0-9]+$/)
      if !custom_envelope.nil? && custom_envelope !~ pattern
        fail ArgumentError, "invalid value for \"custom_envelope\", must conform to the pattern #{pattern}."
      end

      @custom_envelope = custom_envelope
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_placement == o.address_placement &&
          cards == o.cards &&
          color == o.color &&
          double_sided == o.double_sided &&
          extra_service == o.extra_service &&
          mail_type == o.mail_type &&
          return_envelope == o.return_envelope &&
          custom_envelope == o.custom_envelope
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address_placement, cards, color, double_sided, extra_service, mail_type, return_envelope, custom_envelope].hash
    end


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil) # // guardrails-disable-line
        elsif type.kind_of?(String) && type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) }) # // guardrails-disable-line
          end
        elsif !attributes[self.class.attribute_map[key]].nil? && type.kind_of?(Array)
          for base_type in type do
            res = _deserialize(base_type, attributes[self.class.attribute_map[key]])
            if !res.nil?
              self.send("#{key}=", res) # // guardrails-disable-line
              break
            end
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]])) # // guardrails-disable-line
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Lob.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        value = self.send(attr) # // guardrails-disable-line
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
