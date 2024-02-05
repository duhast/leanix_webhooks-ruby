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
  class Delivery
    attr_accessor :id

    # The date at which the delivery was originally created.
    attr_accessor :created_at

    attr_accessor :request_headers

    attr_accessor :payload

    attr_accessor :target_url

    attr_accessor :target_method

    attr_accessor :basic_auth

    attr_accessor :success

    attr_accessor :http_status

    attr_accessor :response_body

    attr_accessor :response_headers

    attr_accessor :active

    # Duration in milliseconds.
    attr_accessor :duration

    # Time it took to process the event in milliseconds.
    attr_accessor :event_processing_time

    attr_accessor :event_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'request_headers' => :'requestHeaders',
        :'payload' => :'payload',
        :'target_url' => :'targetUrl',
        :'target_method' => :'targetMethod',
        :'basic_auth' => :'basicAuth',
        :'success' => :'success',
        :'http_status' => :'httpStatus',
        :'response_body' => :'responseBody',
        :'response_headers' => :'responseHeaders',
        :'active' => :'active',
        :'duration' => :'duration',
        :'event_processing_time' => :'eventProcessingTime',
        :'event_id' => :'eventId'
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
        :'created_at' => :'Time',
        :'request_headers' => :'String',
        :'payload' => :'String',
        :'target_url' => :'String',
        :'target_method' => :'String',
        :'basic_auth' => :'String',
        :'success' => :'Boolean',
        :'http_status' => :'Integer',
        :'response_body' => :'String',
        :'response_headers' => :'String',
        :'active' => :'Boolean',
        :'duration' => :'Integer',
        :'event_processing_time' => :'Integer',
        :'event_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `LeanixWebhooksApi::Delivery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `LeanixWebhooksApi::Delivery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'request_headers')
        self.request_headers = attributes[:'request_headers']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.key?(:'target_url')
        self.target_url = attributes[:'target_url']
      end

      if attributes.key?(:'target_method')
        self.target_method = attributes[:'target_method']
      end

      if attributes.key?(:'basic_auth')
        self.basic_auth = attributes[:'basic_auth']
      end

      if attributes.key?(:'success')
        self.success = attributes[:'success']
      end

      if attributes.key?(:'http_status')
        self.http_status = attributes[:'http_status']
      end

      if attributes.key?(:'response_body')
        self.response_body = attributes[:'response_body']
      end

      if attributes.key?(:'response_headers')
        self.response_headers = attributes[:'response_headers']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'event_processing_time')
        self.event_processing_time = attributes[:'event_processing_time']
      end

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          request_headers == o.request_headers &&
          payload == o.payload &&
          target_url == o.target_url &&
          target_method == o.target_method &&
          basic_auth == o.basic_auth &&
          success == o.success &&
          http_status == o.http_status &&
          response_body == o.response_body &&
          response_headers == o.response_headers &&
          active == o.active &&
          duration == o.duration &&
          event_processing_time == o.event_processing_time &&
          event_id == o.event_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, request_headers, payload, target_url, target_method, basic_auth, success, http_status, response_body, response_headers, active, duration, event_processing_time, event_id].hash
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
