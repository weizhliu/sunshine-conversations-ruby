=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.15.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class MessagebirdAllOf
    # To configure a MessageBird integration, acquire the accessKey, the signingKey and the MessageBird number you would like to use, then call the Create Integration endpoint. The response will include the integration’s `_id` and `webhookSecret`, which must be used to configure the webhook in MessageBird. In the Flow Builder for the MessageBird number you’ve used to integrate, add a new step with the following settings: - Create a new Call HTTP endpoint with SMS flow. - Select your desired SMS number for Incoming SMS. - Click on Forward to URL and set its method to POST. - Then, using the integration _id and webhookSecret returned from the create integration call, enter the following into the URL field:  `https://app.smooch.io/api/messagebird/webhooks/{appId}/{integrationId}/{webhookSecret}` - Select application/json for the Set Content-Type header field. - Save and publish your changes. 
    attr_accessor :type

    # The public API key of your MessageBird account.
    attr_accessor :access_key

    # The signing key of your MessageBird account. Used to validate the webhooks' origin.
    attr_accessor :signing_key

    # Sunshine Conversations will receive all messages sent to this phone number.
    attr_accessor :originator

    # The secret that is used to configure webhooks in MessageBird.
    attr_accessor :webhook_secret

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'access_key' => :'accessKey',
        :'signing_key' => :'signingKey',
        :'originator' => :'originator',
        :'webhook_secret' => :'webhookSecret'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'access_key' => :'String',
        :'signing_key' => :'String',
        :'originator' => :'String',
        :'webhook_secret' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::MessagebirdAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::MessagebirdAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'messagebird'
      end

      if attributes.key?(:'access_key')
        self.access_key = attributes[:'access_key']
      end

      if attributes.key?(:'signing_key')
        self.signing_key = attributes[:'signing_key']
      end

      if attributes.key?(:'originator')
        self.originator = attributes[:'originator']
      end

      if attributes.key?(:'webhook_secret')
        self.webhook_secret = attributes[:'webhook_secret']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @access_key.nil?
        invalid_properties.push('invalid value for "access_key", access_key cannot be nil.')
      end

      if @access_key.to_s.length < 1
        invalid_properties.push('invalid value for "access_key", the character length must be great than or equal to 1.')
      end

      if @signing_key.nil?
        invalid_properties.push('invalid value for "signing_key", signing_key cannot be nil.')
      end

      if @signing_key.to_s.length < 1
        invalid_properties.push('invalid value for "signing_key", the character length must be great than or equal to 1.')
      end

      if @originator.nil?
        invalid_properties.push('invalid value for "originator", originator cannot be nil.')
      end

      if @originator.to_s.length < 1
        invalid_properties.push('invalid value for "originator", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @access_key.nil?
      return false if @access_key.to_s.length < 1
      return false if @signing_key.nil?
      return false if @signing_key.to_s.length < 1
      return false if @originator.nil?
      return false if @originator.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] access_key Value to be assigned
    def access_key=(access_key)
      if access_key.nil?
        fail ArgumentError, 'access_key cannot be nil'
      end

      if access_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "access_key", the character length must be great than or equal to 1.'
      end

      @access_key = access_key
    end

    # Custom attribute writer method with validation
    # @param [Object] signing_key Value to be assigned
    def signing_key=(signing_key)
      if signing_key.nil?
        fail ArgumentError, 'signing_key cannot be nil'
      end

      if signing_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "signing_key", the character length must be great than or equal to 1.'
      end

      @signing_key = signing_key
    end

    # Custom attribute writer method with validation
    # @param [Object] originator Value to be assigned
    def originator=(originator)
      if originator.nil?
        fail ArgumentError, 'originator cannot be nil'
      end

      if originator.to_s.length < 1
        fail ArgumentError, 'invalid value for "originator", the character length must be great than or equal to 1.'
      end

      @originator = originator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          access_key == o.access_key &&
          signing_key == o.signing_key &&
          originator == o.originator &&
          webhook_secret == o.webhook_secret
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, access_key, signing_key, originator, webhook_secret].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        SunshineConversationsClient.const_get(type).build_from_hash(value)
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
