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
  class Upload
    # Unique identifier prefixed with `upl_`.
    attr_accessor :id

    # Account ID that made the request
    attr_accessor :account_id

    # The environment in which the mailpieces were created. Today, will only be `live`.
    attr_accessor :mode

    # Campaign ID associated with the upload
    attr_accessor :campaign_id

    # Url where your campaign mailpiece failures can be retrieved
    attr_accessor :failures_url

    # Filename of the upload
    attr_accessor :original_filename

    attr_accessor :state

    # Total number of recipients for the campaign
    attr_accessor :total_mailpieces

    # Number of mailpieces that failed to create
    attr_accessor :failed_mailpieces

    # Number of mailpieces that were successfully created
    attr_accessor :validated_mailpieces

    # Number of bytes processed in your CSV
    attr_accessor :bytes_processed

    # A timestamp in ISO 8601 format of the date the upload was created
    attr_accessor :date_created

    # A timestamp in ISO 8601 format of the date the upload was last modified
    attr_accessor :date_modified

    attr_accessor :required_address_column_mapping

    attr_accessor :optional_address_column_mapping

    attr_accessor :metadata

    # The mapping of column headers in your file to the merge variables present in your creative. See our <a href=\"https://help.lob.com/print-and-mail/building-a-mail-strategy/campaign-or-triggered-sends/campaign-audience-guide#step-3-map-merge-variable-data-if-applicable-7\" target=\"_blank\">Campaign Audience Guide</a> for additional details. <br />If a merge variable has the same \"name\" as a \"key\" in the `requiredAddressColumnMapping` or `optionalAddressColumnMapping` objects, then they **CANNOT** have a different value in this object. If a different value is provided, then when the campaign is processing it will get overwritten with the mapped value present in the `requiredAddressColumnMapping` or `optionalAddressColumnMapping` objects.
    attr_accessor :merge_variable_column_mapping

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
        :'id' => :'id',
        :'account_id' => :'accountId',
        :'mode' => :'mode',
        :'campaign_id' => :'campaignId',
        :'failures_url' => :'failuresUrl',
        :'original_filename' => :'originalFilename',
        :'state' => :'state',
        :'total_mailpieces' => :'totalMailpieces',
        :'failed_mailpieces' => :'failedMailpieces',
        :'validated_mailpieces' => :'validatedMailpieces',
        :'bytes_processed' => :'bytesProcessed',
        :'date_created' => :'dateCreated',
        :'date_modified' => :'dateModified',
        :'required_address_column_mapping' => :'requiredAddressColumnMapping',
        :'optional_address_column_mapping' => :'optionalAddressColumnMapping',
        :'metadata' => :'metadata',
        :'merge_variable_column_mapping' => :'mergeVariableColumnMapping'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'account_id' => :'String',
        :'mode' => :'String',
        :'campaign_id' => :'String',
        :'failures_url' => :'String',
        :'original_filename' => :'String',
        :'state' => :'UploadState',
        :'total_mailpieces' => :'Integer',
        :'failed_mailpieces' => :'Integer',
        :'validated_mailpieces' => :'Integer',
        :'bytes_processed' => :'Integer',
        :'date_created' => :'Time',
        :'date_modified' => :'Time',
        :'required_address_column_mapping' => :'RequiredAddressColumnMapping',
        :'optional_address_column_mapping' => :'OptionalAddressColumnMapping',
        :'metadata' => :'UploadsMetadata',
        :'merge_variable_column_mapping' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'merge_variable_column_mapping'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Lob::Upload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Lob::Upload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'failures_url')
        self.failures_url = attributes[:'failures_url']
      end

      if attributes.key?(:'original_filename')
        self.original_filename = attributes[:'original_filename']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = 'Draft'
      end

      if attributes.key?(:'total_mailpieces')
        self.total_mailpieces = attributes[:'total_mailpieces']
      end

      if attributes.key?(:'failed_mailpieces')
        self.failed_mailpieces = attributes[:'failed_mailpieces']
      end

      if attributes.key?(:'validated_mailpieces')
        self.validated_mailpieces = attributes[:'validated_mailpieces']
      end

      if attributes.key?(:'bytes_processed')
        self.bytes_processed = attributes[:'bytes_processed']
      end

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'date_modified')
        self.date_modified = attributes[:'date_modified']
      end

      if attributes.key?(:'required_address_column_mapping')
        self.required_address_column_mapping = attributes[:'required_address_column_mapping']
      end

      if attributes.key?(:'optional_address_column_mapping')
        self.optional_address_column_mapping = attributes[:'optional_address_column_mapping']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'merge_variable_column_mapping')
        self.merge_variable_column_mapping = attributes[:'merge_variable_column_mapping']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^upl_[a-zA-Z0-9]+$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @mode.nil?
        invalid_properties.push('invalid value for "mode", mode cannot be nil.')
      end

      if @campaign_id.nil?
        invalid_properties.push('invalid value for "campaign_id", campaign_id cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @total_mailpieces.nil?
        invalid_properties.push('invalid value for "total_mailpieces", total_mailpieces cannot be nil.')
      end

      if @failed_mailpieces.nil?
        invalid_properties.push('invalid value for "failed_mailpieces", failed_mailpieces cannot be nil.')
      end

      if @validated_mailpieces.nil?
        invalid_properties.push('invalid value for "validated_mailpieces", validated_mailpieces cannot be nil.')
      end

      if @bytes_processed.nil?
        invalid_properties.push('invalid value for "bytes_processed", bytes_processed cannot be nil.')
      end

      if @date_created.nil?
        invalid_properties.push('invalid value for "date_created", date_created cannot be nil.')
      end

      if @date_modified.nil?
        invalid_properties.push('invalid value for "date_modified", date_modified cannot be nil.')
      end

      if @required_address_column_mapping.nil?
        invalid_properties.push('invalid value for "required_address_column_mapping", required_address_column_mapping cannot be nil.')
      end

      if @optional_address_column_mapping.nil?
        invalid_properties.push('invalid value for "optional_address_column_mapping", optional_address_column_mapping cannot be nil.')
      end

      if @metadata.nil?
        invalid_properties.push('invalid value for "metadata", metadata cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id !~ Regexp.new(/^upl_[a-zA-Z0-9]+$/)
      return false if @account_id.nil?
      return false if @mode.nil?
      mode_validator = EnumAttributeValidator.new('String', ["test", "live"])
      return false unless mode_validator.valid?(@mode)
      return false if @campaign_id.nil?
      return false if @state.nil?
      return false if @total_mailpieces.nil?
      return false if @failed_mailpieces.nil?
      return false if @validated_mailpieces.nil?
      return false if @bytes_processed.nil?
      return false if @date_created.nil?
      return false if @date_modified.nil?
      return false if @required_address_column_mapping.nil?
      return false if @optional_address_column_mapping.nil?
      return false if @metadata.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      pattern = Regexp.new(/^upl_[a-zA-Z0-9]+$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(mode)
      validator = EnumAttributeValidator.new('String', ["test", "live"])
      unless validator.valid?(mode)
        fail ArgumentError, "invalid value for \"mode\", must be one of #{validator.allowable_values}."
      end
      @mode = mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_id == o.account_id &&
          mode == o.mode &&
          campaign_id == o.campaign_id &&
          failures_url == o.failures_url &&
          original_filename == o.original_filename &&
          state == o.state &&
          total_mailpieces == o.total_mailpieces &&
          failed_mailpieces == o.failed_mailpieces &&
          validated_mailpieces == o.validated_mailpieces &&
          bytes_processed == o.bytes_processed &&
          date_created == o.date_created &&
          date_modified == o.date_modified &&
          required_address_column_mapping == o.required_address_column_mapping &&
          optional_address_column_mapping == o.optional_address_column_mapping &&
          metadata == o.metadata &&
          merge_variable_column_mapping == o.merge_variable_column_mapping
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_id, mode, campaign_id, failures_url, original_filename, state, total_mailpieces, failed_mailpieces, validated_mailpieces, bytes_processed, date_created, date_modified, required_address_column_mapping, optional_address_column_mapping, metadata, merge_variable_column_mapping].hash
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
