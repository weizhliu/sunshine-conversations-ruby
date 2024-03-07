=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.3.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class Line < Integration
    # For LINE, each of your customers will need to manually configure a webhook in their LINE configuration page that will point to Sunshine Conversations servers. You must instruct your customers how to configure this manually on their LINE bot page. Once you’ve acquired all the required information, call the Create Integration endpoint. Then, using the returned integration _id, your customer must set the Callback URL field in their LINE Business Center page. The URL should look like the following: `https://app.smooch.io:443/api/line/webhooks/{appId}/{integrationId}`. 
    attr_accessor :type

    # LINE Channel ID. Can be omitted along with `channelSecret` to integrate LINE to setup a webhook before receiving the `channelId` and `channelSecret` back from LINE.
    attr_accessor :channel_id

    # LINE Channel Secret. Can be omitted along with `channelId` to integrate LINE to setup a webhook before receiving the `channelId` and `channelSecret` back from LINE.
    attr_accessor :channel_secret

    # LINE Channel Access Token.
    attr_accessor :channel_access_token

    # LINE Service Code.
    attr_accessor :service_code

    # LINE Switcher Secret.
    attr_accessor :switcher_secret

    # URL provided by LINE in the [Developer Console](https://developers.line.biz/console/).
    attr_accessor :qr_code_url

    # LINE Basic ID. Is automatically set when qrCodeUrl is updated.
    attr_accessor :line_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'channel_id' => :'channelId',
        :'channel_secret' => :'channelSecret',
        :'channel_access_token' => :'channelAccessToken',
        :'service_code' => :'serviceCode',
        :'switcher_secret' => :'switcherSecret',
        :'qr_code_url' => :'qrCodeUrl',
        :'line_id' => :'lineId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'channel_id' => :'String',
        :'channel_secret' => :'String',
        :'channel_access_token' => :'String',
        :'service_code' => :'String',
        :'switcher_secret' => :'String',
        :'qr_code_url' => :'String',
        :'line_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Integration',
      :'LineAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::Line` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::Line`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'line'
      end

      if attributes.key?(:'channel_id')
        self.channel_id = attributes[:'channel_id']
      end

      if attributes.key?(:'channel_secret')
        self.channel_secret = attributes[:'channel_secret']
      end

      if attributes.key?(:'channel_access_token')
        self.channel_access_token = attributes[:'channel_access_token']
      end

      if attributes.key?(:'service_code')
        self.service_code = attributes[:'service_code']
      end

      if attributes.key?(:'switcher_secret')
        self.switcher_secret = attributes[:'switcher_secret']
      end

      if attributes.key?(:'qr_code_url')
        self.qr_code_url = attributes[:'qr_code_url']
      end

      if attributes.key?(:'line_id')
        self.line_id = attributes[:'line_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if !@switcher_secret.nil? && @switcher_secret.to_s.length < 1
        invalid_properties.push('invalid value for "switcher_secret", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@switcher_secret.nil? && @switcher_secret.to_s.length < 1
      true && super
    end

    # Custom attribute writer method with validation
    # @param [Object] switcher_secret Value to be assigned
    def switcher_secret=(switcher_secret)
      if !switcher_secret.nil? && switcher_secret.to_s.length < 1
        fail ArgumentError, 'invalid value for "switcher_secret", the character length must be great than or equal to 1.'
      end

      @switcher_secret = switcher_secret
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          channel_id == o.channel_id &&
          channel_secret == o.channel_secret &&
          channel_access_token == o.channel_access_token &&
          service_code == o.service_code &&
          switcher_secret == o.switcher_secret &&
          qr_code_url == o.qr_code_url &&
          line_id == o.line_id && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, channel_id, channel_secret, channel_access_token, service_code, switcher_secret, qr_code_url, line_id].hash
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
      super(attributes)
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
      hash = super
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
