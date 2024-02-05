=begin
#Webhooks

#Sends notifications on trigger events to subscribed observers

The version of the OpenAPI document: 2.0.119-SNAPSHOT

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module LeanixWebhooksApi
  class Subscription
    attr_accessor :delivery_type

    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :tag_sets

    attr_accessor :created_at

    attr_accessor :workspace_id

    attr_accessor :user_id

    # Used and required when 'deliveryType' is 'PUSH'.
    attr_accessor :target_url

    # Used when 'deliveryType' is 'PUSH'.
    attr_accessor :target_method

    # Used when 'deliveryType' is 'PUSH'.
    attr_accessor :authorization_header

    # Used when 'deliveryType' is 'PUSH'.
    attr_accessor :callback

    # Used when 'deliveryType' is 'PUSH'.
    attr_accessor :last_delivery_status

    # Don't re-send events that caused an error on PUSH. Shirks the at-least-once policy! No effect on PULL.
    attr_accessor :ignore_error

    # Used when 'deliveryType' is 'PULL'. The desired maximum size (in kiB) of the returned batch of events. Default is 512. This is an approximate number: Actual responses may be smaller, or bigger when there is one single event exceeding maxBatchSize.
    attr_accessor :max_batch_size

    # Specifies how the workspaceId is used on events:  WORKSPACE -> get events with specified workspaceId (workspaceId must not be null), NO_WORKSPACE -> get events that have no workspaceId (workspaceId must be null), ANY -> get all events regardless if a workspaceId is assigned or not on the event
    attr_accessor :workspace_constraint

    attr_accessor :active

    attr_accessor :error_count

    attr_accessor :first_time_delivery_failed

    # Specifies the behavior of the payload property of a delivery for this subscription:  DEFAULT -> get only the payload property of the event (default behavior), WRAPPED_EVENT -> get the whole serialized event as the payload, NO_PAYLOAD -> get always an empty {} payload
    attr_accessor :payload_mode

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
        :'delivery_type' => :'deliveryType',
        :'id' => :'id',
        :'identifier' => :'identifier',
        :'tag_sets' => :'tagSets',
        :'created_at' => :'createdAt',
        :'workspace_id' => :'workspaceId',
        :'user_id' => :'userId',
        :'target_url' => :'targetUrl',
        :'target_method' => :'targetMethod',
        :'authorization_header' => :'authorizationHeader',
        :'callback' => :'callback',
        :'last_delivery_status' => :'lastDeliveryStatus',
        :'ignore_error' => :'ignoreError',
        :'max_batch_size' => :'maxBatchSize',
        :'workspace_constraint' => :'workspaceConstraint',
        :'active' => :'active',
        :'error_count' => :'errorCount',
        :'first_time_delivery_failed' => :'firstTimeDeliveryFailed',
        :'payload_mode' => :'payloadMode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'delivery_type' => :'String',
        :'id' => :'String',
        :'identifier' => :'String',
        :'tag_sets' => :'Array<Array<String>>',
        :'created_at' => :'Time',
        :'workspace_id' => :'String',
        :'user_id' => :'String',
        :'target_url' => :'String',
        :'target_method' => :'String',
        :'authorization_header' => :'String',
        :'callback' => :'String',
        :'last_delivery_status' => :'Integer',
        :'ignore_error' => :'Boolean',
        :'max_batch_size' => :'Integer',
        :'workspace_constraint' => :'String',
        :'active' => :'Boolean',
        :'error_count' => :'Integer',
        :'first_time_delivery_failed' => :'Time',
        :'payload_mode' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `LeanixWebhooksApi::Subscription` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LeanixWebhooksApi::Subscription`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'delivery_type')
        self.delivery_type = attributes[:'delivery_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'tag_sets')
        if (value = attributes[:'tag_sets']).is_a?(Array)
          self.tag_sets = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'workspace_id')
        self.workspace_id = attributes[:'workspace_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'target_url')
        self.target_url = attributes[:'target_url']
      else
        self.target_url = nil
      end

      if attributes.key?(:'target_method')
        self.target_method = attributes[:'target_method']
      else
        self.target_method = nil
      end

      if attributes.key?(:'authorization_header')
        self.authorization_header = attributes[:'authorization_header']
      end

      if attributes.key?(:'callback')
        self.callback = attributes[:'callback']
      end

      if attributes.key?(:'last_delivery_status')
        self.last_delivery_status = attributes[:'last_delivery_status']
      end

      if attributes.key?(:'ignore_error')
        self.ignore_error = attributes[:'ignore_error']
      else
        self.ignore_error = nil
      end

      if attributes.key?(:'max_batch_size')
        self.max_batch_size = attributes[:'max_batch_size']
      end

      if attributes.key?(:'workspace_constraint')
        self.workspace_constraint = attributes[:'workspace_constraint']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'error_count')
        self.error_count = attributes[:'error_count']
      end

      if attributes.key?(:'first_time_delivery_failed')
        self.first_time_delivery_failed = attributes[:'first_time_delivery_failed']
      end

      if attributes.key?(:'payload_mode')
        self.payload_mode = attributes[:'payload_mode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@identifier.nil? && @identifier.to_s.length > 255
        invalid_properties.push('invalid value for "identifier", the character length must be smaller than or equal to 255.')
      end

      if !@identifier.nil? && @identifier.to_s.length < 0
        invalid_properties.push('invalid value for "identifier", the character length must be great than or equal to 0.')
      end

      if @target_url.nil?
        invalid_properties.push('invalid value for "target_url", target_url cannot be nil.')
      end

      if @target_method.nil?
        invalid_properties.push('invalid value for "target_method", target_method cannot be nil.')
      end

      if !@authorization_header.nil? && @authorization_header.to_s.length > 4096
        invalid_properties.push('invalid value for "authorization_header", the character length must be smaller than or equal to 4096.')
      end

      if !@authorization_header.nil? && @authorization_header.to_s.length < 0
        invalid_properties.push('invalid value for "authorization_header", the character length must be great than or equal to 0.')
      end

      if @ignore_error.nil?
        invalid_properties.push('invalid value for "ignore_error", ignore_error cannot be nil.')
      end

      if !@max_batch_size.nil? && @max_batch_size > 51200
        invalid_properties.push('invalid value for "max_batch_size", must be smaller than or equal to 51200.')
      end

      if !@max_batch_size.nil? && @max_batch_size < 1
        invalid_properties.push('invalid value for "max_batch_size", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      delivery_type_validator = EnumAttributeValidator.new('String', ["PUSH", "PULL"])
      return false unless delivery_type_validator.valid?(@delivery_type)
      return false if !@identifier.nil? && @identifier.to_s.length > 255
      return false if !@identifier.nil? && @identifier.to_s.length < 0
      return false if @target_url.nil?
      return false if @target_method.nil?
      return false if !@authorization_header.nil? && @authorization_header.to_s.length > 4096
      return false if !@authorization_header.nil? && @authorization_header.to_s.length < 0
      return false if @ignore_error.nil?
      return false if !@max_batch_size.nil? && @max_batch_size > 51200
      return false if !@max_batch_size.nil? && @max_batch_size < 1
      workspace_constraint_validator = EnumAttributeValidator.new('String', ["WORKSPACE", "NO_WORKSPACE", "ANY"])
      return false unless workspace_constraint_validator.valid?(@workspace_constraint)
      payload_mode_validator = EnumAttributeValidator.new('String', ["DEFAULT", "WRAPPED_EVENT", "NO_PAYLOAD"])
      return false unless payload_mode_validator.valid?(@payload_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_type Object to be assigned
    def delivery_type=(delivery_type)
      validator = EnumAttributeValidator.new('String', ["PUSH", "PULL"])
      unless validator.valid?(delivery_type)
        fail ArgumentError, "invalid value for \"delivery_type\", must be one of #{validator.allowable_values}."
      end
      @delivery_type = delivery_type
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, 'identifier cannot be nil'
      end

      if identifier.to_s.length > 255
        fail ArgumentError, 'invalid value for "identifier", the character length must be smaller than or equal to 255.'
      end

      if identifier.to_s.length < 0
        fail ArgumentError, 'invalid value for "identifier", the character length must be great than or equal to 0.'
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_header Value to be assigned
    def authorization_header=(authorization_header)
      if authorization_header.nil?
        fail ArgumentError, 'authorization_header cannot be nil'
      end

      if authorization_header.to_s.length > 4096
        fail ArgumentError, 'invalid value for "authorization_header", the character length must be smaller than or equal to 4096.'
      end

      if authorization_header.to_s.length < 0
        fail ArgumentError, 'invalid value for "authorization_header", the character length must be great than or equal to 0.'
      end

      @authorization_header = authorization_header
    end

    # Custom attribute writer method with validation
    # @param [Object] max_batch_size Value to be assigned
    def max_batch_size=(max_batch_size)
      if max_batch_size.nil?
        fail ArgumentError, 'max_batch_size cannot be nil'
      end

      if max_batch_size > 51200
        fail ArgumentError, 'invalid value for "max_batch_size", must be smaller than or equal to 51200.'
      end

      if max_batch_size < 1
        fail ArgumentError, 'invalid value for "max_batch_size", must be greater than or equal to 1.'
      end

      @max_batch_size = max_batch_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] workspace_constraint Object to be assigned
    def workspace_constraint=(workspace_constraint)
      validator = EnumAttributeValidator.new('String', ["WORKSPACE", "NO_WORKSPACE", "ANY"])
      unless validator.valid?(workspace_constraint)
        fail ArgumentError, "invalid value for \"workspace_constraint\", must be one of #{validator.allowable_values}."
      end
      @workspace_constraint = workspace_constraint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payload_mode Object to be assigned
    def payload_mode=(payload_mode)
      validator = EnumAttributeValidator.new('String', ["DEFAULT", "WRAPPED_EVENT", "NO_PAYLOAD"])
      unless validator.valid?(payload_mode)
        fail ArgumentError, "invalid value for \"payload_mode\", must be one of #{validator.allowable_values}."
      end
      @payload_mode = payload_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          delivery_type == o.delivery_type &&
          id == o.id &&
          identifier == o.identifier &&
          tag_sets == o.tag_sets &&
          created_at == o.created_at &&
          workspace_id == o.workspace_id &&
          user_id == o.user_id &&
          target_url == o.target_url &&
          target_method == o.target_method &&
          authorization_header == o.authorization_header &&
          callback == o.callback &&
          last_delivery_status == o.last_delivery_status &&
          ignore_error == o.ignore_error &&
          max_batch_size == o.max_batch_size &&
          workspace_constraint == o.workspace_constraint &&
          active == o.active &&
          error_count == o.error_count &&
          first_time_delivery_failed == o.first_time_delivery_failed &&
          payload_mode == o.payload_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [delivery_type, id, identifier, tag_sets, created_at, workspace_id, user_id, target_url, target_method, authorization_header, callback, last_delivery_status, ignore_error, max_batch_size, workspace_constraint, active, error_count, first_time_delivery_failed, payload_mode].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = LeanixWebhooksApi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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