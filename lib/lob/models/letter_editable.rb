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
  class LetterEditable
    # An internal description that identifies this resource. Must be no longer than 255 characters. 
    attr_accessor :description

    # Use metadata to store custom information for tagging and labeling back to your internal systems. Must be an object with up to 20 key-value pairs. Keys must be at most 40 characters and values must be at most 500 characters. Neither can contain the characters `\"` and `\\`. i.e. '{\"customer_id\" : \"NEWYORK2015\"}' Nested objects are not supported.  See [Metadata](#section/Metadata) for more information.
    attr_accessor :metadata

    attr_accessor :mail_type

    # You can input a merge variable payload object to your template to render dynamic content. For example, if you have a template like: `{{variable_name}}`, pass in `{\"variable_name\": \"Harry\"}` to render `Harry`. `merge_variables` must be an object. Any type of value is accepted as long as the object is valid JSON; you can use `strings`, `numbers`, `booleans`, `arrays`, `objects`, or `null`. The max length of the object is 25,000 characters. If you call `JSON.stringify` on your object, it can be no longer than 25,000 characters. Your variable names cannot contain any whitespace or any of the following special characters: `!`, `\"`, `#`, `%`, `&`, `'`, `(`, `)`, `*`, `+`, `,`, `/`, `;`, `<`, `=`, `>`, `@`, `[`, `\\`, `]`, `^`, `` ` ``, `{`, `|`, `}`, `~`. More instructions can be found in [our guide to using html and merge variables](https://lob.com/resources/guides/general/using-html-and-merge-variables). Depending on your [Merge Variable strictness](https://dashboard.lob.com/#/settings/account) setting, if you define variables in your HTML but do not pass them here, you will either receive an error or the variable will render as an empty string.
    attr_accessor :merge_variables

    # A timestamp in ISO 8601 format which specifies a date after the current time and up to 180 days in the future to send the letter off for production. Setting a send date overrides the default [cancellation window](#section/Cancellation-Windows) applied to the mailpiece. Until the `send_date` has passed, the mailpiece can be canceled. If a date in the format `2017-11-01` is passed, it will evaluate to midnight UTC of that date (`2017-11-01T00:00:00.000Z`). If a datetime is passed, that exact time will be used. A `send_date` passed with no time zone will default to UTC, while a `send_date` passed with a time zone will be converted to UTC.
    attr_accessor :send_date

    # Set this key to `true` if you would like to print in color. Set to `false` if you would like to print in black and white.
    attr_accessor :color

    # Set this attribute to `true` for double sided printing, or `false` for for single sided printing. Defaults to `true`.
    attr_accessor :double_sided

    # Specifies the location of the address information that will show through the double-window envelope. To see how this will impact your letter design, view our letter template.   * `top_first_page` - (default) print address information at the top of your provided first page   * `insert_blank_page` - insert a blank address page at the beginning of your file (you will be charged for the extra page)   * `bottom_first_page_center` - **(deprecation planned within a few months)** print address information at the bottom center of your provided first page   * `bottom_first_page` - print address information at the bottom of your provided first page 
    attr_accessor :address_placement

    # indicates if a return envelope is requested for the letter. The value corresponding to this field is by default a boolean. But if the account is signed up for custom return envelopes, the value is of type string and is `no_9_single_window` for a standard return envelope and a custom `return_envelope_id` for non-standard return envelopes.  To include a return envelope with your letter, set to `true` and specify the `perforated_page`. See [pricing](https://www.lob.com/pricing/print-mail#compare) for extra costs incurred.
    attr_accessor :return_envelope

    # Required if `return_envelope` is `true`. The number of the page that should be perforated for use with the return envelope. Must be greater than or equal to `1`. The blank page added by `address_placement=insert_blank_page` will be ignored when considering the perforated page number. To see how perforation will impact your letter design, view our [perforation guide](https://s3-us-west-2.amazonaws.com/public.lob.com/assets/templates/letter_perf_template.pdf).
    attr_accessor :perforated_page

    attr_accessor :custom_envelope

    # Must either be an address ID or an inline object with correct address parameters.
    attr_accessor :to

    # Must either be an address ID or an inline object with correct address parameters.
    attr_accessor :from

    # PDF file containing the letter's formatting.
    attr_accessor :file

    # Add an extra service to your letter:   * `certified` - track and confirm delivery for domestic destinations. An extra sheet (1 PDF page single-sided or 2 PDF pages double-sided) is added to the beginning of your letter for address and barcode information. See here for templates: [#10 envelope](https://s3-us-west-2.amazonaws.com/public.lob.com/assets/templates/letter_certified_template.pdf) and [flat envelope](https://s3-us-west-2.amazonaws.com/public.lob.com/assets/templates/letter_certified_flat_template.pdf) (used for letters over 6 pages single-sided or 12 pages double-sided). You will not be charged for this extra sheet.   * `certified_return_receipt` - request an electronic copy of the recipient's signature to prove delivery of your certified letter   * `registered` - provides tracking and confirmation for international addresses 
    attr_accessor :extra_service

    # A single-element array containing an existing card id in a string format. See [cards](#tag/Cards) for more information.
    attr_accessor :cards

    # An optional string with the billing group ID to tag your usage with. Is used for billing purposes. Requires special activation to use. See [Billing Group API](https://lob.github.io/lob-openapi/#tag/Billing-Groups) for more information.
    attr_accessor :billing_group_id

    attr_accessor :qr_code

    attr_accessor :use_type

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
        :'description' => :'description',
        :'metadata' => :'metadata',
        :'mail_type' => :'mail_type',
        :'merge_variables' => :'merge_variables',
        :'send_date' => :'send_date',
        :'color' => :'color',
        :'double_sided' => :'double_sided',
        :'address_placement' => :'address_placement',
        :'return_envelope' => :'return_envelope',
        :'perforated_page' => :'perforated_page',
        :'custom_envelope' => :'custom_envelope',
        :'to' => :'to',
        :'from' => :'from',
        :'file' => :'file',
        :'extra_service' => :'extra_service',
        :'cards' => :'cards',
        :'billing_group_id' => :'billing_group_id',
        :'qr_code' => :'qr_code',
        :'use_type' => :'use_type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'description' => :'String',
        :'metadata' => :'Hash<String, String>',
        :'mail_type' => :'MailType',
        :'merge_variables' => :'Object',
        :'send_date' => :'Time',
        :'color' => :'Boolean',
        :'double_sided' => :'Boolean',
        :'address_placement' => :'String',
        :'return_envelope' => Array[:'Boolean', :'String'],
        :'perforated_page' => :'Integer',
        :'custom_envelope' => :'String',
        :'to' => Array[:'AddressEditable', :'String'],
        :'from' => Array[:'AddressEditable', :'String'],
        :'file' => :'String',
        :'extra_service' => :'String',
        :'cards' => :'Array<String>',
        :'billing_group_id' => :'String',
        :'qr_code' => :'QrCode',
        :'use_type' => :'LtrUseType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'merge_variables',
        :'return_envelope',
        :'perforated_page',
        :'custom_envelope',
        :'to',
        :'from',
        :'extra_service',
        :'cards',
        :'use_type'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Lob::LetterEditable` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Lob::LetterEditable`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'mail_type')
        self.mail_type = attributes[:'mail_type']
      else
        self.mail_type = 'usps_first_class'
      end

      if attributes.key?(:'merge_variables')
        self.merge_variables = attributes[:'merge_variables']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'double_sided')
        self.double_sided = attributes[:'double_sided']
      else
        self.double_sided = true
      end

      if attributes.key?(:'address_placement')
        self.address_placement = attributes[:'address_placement']
      else
        self.address_placement = 'top_first_page'
      end

      if attributes.key?(:'return_envelope')
        self.return_envelope = attributes[:'return_envelope']
      end

      if attributes.key?(:'perforated_page')
        self.perforated_page = attributes[:'perforated_page']
      end

      if attributes.key?(:'custom_envelope')
        self.custom_envelope = attributes[:'custom_envelope']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.key?(:'extra_service')
        self.extra_service = attributes[:'extra_service']
      end

      if attributes.key?(:'cards')
        if (value = attributes[:'cards']).is_a?(Array)
          self.cards = value
        end
      end

      if attributes.key?(:'billing_group_id')
        self.billing_group_id = attributes[:'billing_group_id']
      end

      if attributes.key?(:'qr_code')
        self.qr_code = attributes[:'qr_code']
      end

      if attributes.key?(:'use_type')
        self.use_type = attributes[:'use_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      if @color.nil?
        invalid_properties.push('invalid value for "color", color cannot be nil.')
      end

      if @file.nil?
        invalid_properties.push('invalid value for "file", file cannot be nil.')
      end

      if !@cards.nil? && @cards.length > 1
        invalid_properties.push('invalid value for "cards", number of items must be less than or equal to 1.')
      end

      if !@cards.nil? && @cards.length < 0
        invalid_properties.push('invalid value for "cards", number of items must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.length > 255
      return false if @color.nil?
      address_placement_validator = EnumAttributeValidator.new('String', ["top_first_page", "insert_blank_page", "bottom_first_page_center", "bottom_first_page"])
      return false unless address_placement_validator.valid?(@address_placement)
      return false if @file.nil?
      extra_service_validator = EnumAttributeValidator.new('String', ["certified", "certified_return_receipt", "registered", "null"])
      return false unless extra_service_validator.valid?(@extra_service)
      return false if !@cards.nil? && @cards.length > 1
      return false if !@cards.nil? && @cards.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      @metadata = metadata
    end

    # Custom attribute writer method with validation
    # @param [Object] merge_variables Value to be assigned
    def merge_variables=(merge_variables)
      @merge_variables = merge_variables
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] extra_service Object to be assigned
    def extra_service=(extra_service)
      validator = EnumAttributeValidator.new('String', ["certified", "certified_return_receipt", "registered", "null"])
      unless validator.valid?(extra_service)
        fail ArgumentError, "invalid value for \"extra_service\", must be one of #{validator.allowable_values}."
      end
      @extra_service = extra_service
    end

    # Custom attribute writer method with validation
    # @param [Object] cards Value to be assigned
    def cards=(cards)
      if !cards.nil? && cards.length > 1
        fail ArgumentError, 'invalid value for "cards", number of items must be less than or equal to 1.'
      end

      if !cards.nil? && cards.length < 0
        fail ArgumentError, 'invalid value for "cards", number of items must be greater than or equal to 0.'
      end

      @cards = cards
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          metadata == o.metadata &&
          mail_type == o.mail_type &&
          merge_variables == o.merge_variables &&
          send_date == o.send_date &&
          color == o.color &&
          double_sided == o.double_sided &&
          address_placement == o.address_placement &&
          return_envelope == o.return_envelope &&
          perforated_page == o.perforated_page &&
          custom_envelope == o.custom_envelope &&
          to == o.to &&
          from == o.from &&
          file == o.file &&
          extra_service == o.extra_service &&
          cards == o.cards &&
          billing_group_id == o.billing_group_id &&
          qr_code == o.qr_code &&
          use_type == o.use_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [description, metadata, mail_type, merge_variables, send_date, color, double_sided, address_placement, return_envelope, perforated_page, custom_envelope, to, from, file, extra_service, cards, billing_group_id, qr_code, use_type].hash
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
