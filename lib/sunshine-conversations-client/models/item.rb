=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.3.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class Item
    # The title of the item.
    attr_accessor :title

    # The description of the item.
    attr_accessor :description

    # The image url attached to the item.
    attr_accessor :media_url

    # The MIME type for any image attached in the mediaUrl.
    attr_accessor :media_type

    # An optional description of the media for accessibility purposes. The field will be saved by default with the file name as the value.
    attr_accessor :alt_text

    # The size of the image.
    attr_accessor :size

    # An array of objects representing the actions associated with the item.
    attr_accessor :actions

    # Flat object containing custom properties. Strings, numbers and booleans  are the only supported format that can be passed to metadata. The metadata is limited to 4KB in size. 
    attr_accessor :metadata

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
        :'title' => :'title',
        :'description' => :'description',
        :'media_url' => :'mediaUrl',
        :'media_type' => :'mediaType',
        :'alt_text' => :'altText',
        :'size' => :'size',
        :'actions' => :'actions',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'title' => :'String',
        :'description' => :'String',
        :'media_url' => :'String',
        :'media_type' => :'String',
        :'alt_text' => :'String',
        :'size' => :'String',
        :'actions' => :'Array<ActionSubset>',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'metadata'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::Item` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::Item`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'media_url')
        self.media_url = attributes[:'media_url']
      end

      if attributes.key?(:'media_type')
        self.media_type = attributes[:'media_type']
      end

      if attributes.key?(:'alt_text')
        self.alt_text = attributes[:'alt_text']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'actions')
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @title.to_s.length > 128
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 128.')
      end

      if @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if !@description.nil? && @description.to_s.length > 128
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 128.')
      end

      if !@media_url.nil? && @media_url.to_s.length > 2048
        invalid_properties.push('invalid value for "media_url", the character length must be smaller than or equal to 2048.')
      end

      if !@media_type.nil? && @media_type.to_s.length > 128
        invalid_properties.push('invalid value for "media_type", the character length must be smaller than or equal to 128.')
      end

      if !@alt_text.nil? && @alt_text.to_s.length > 128
        invalid_properties.push('invalid value for "alt_text", the character length must be smaller than or equal to 128.')
      end

      if @actions.nil?
        invalid_properties.push('invalid value for "actions", actions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @title.to_s.length > 128
      return false if @title.to_s.length < 1
      return false if !@description.nil? && @description.to_s.length > 128
      return false if !@media_url.nil? && @media_url.to_s.length > 2048
      return false if !@media_type.nil? && @media_type.to_s.length > 128
      return false if !@alt_text.nil? && @alt_text.to_s.length > 128
      size_validator = EnumAttributeValidator.new('String', ["compact", "large"])
      return false unless size_validator.valid?(@size)
      return false if @actions.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, 'title cannot be nil'
      end

      if title.to_s.length > 128
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 128.'
      end

      if title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 128
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 128.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] media_url Value to be assigned
    def media_url=(media_url)
      if !media_url.nil? && media_url.to_s.length > 2048
        fail ArgumentError, 'invalid value for "media_url", the character length must be smaller than or equal to 2048.'
      end

      @media_url = media_url
    end

    # Custom attribute writer method with validation
    # @param [Object] media_type Value to be assigned
    def media_type=(media_type)
      if !media_type.nil? && media_type.to_s.length > 128
        fail ArgumentError, 'invalid value for "media_type", the character length must be smaller than or equal to 128.'
      end

      @media_type = media_type
    end

    # Custom attribute writer method with validation
    # @param [Object] alt_text Value to be assigned
    def alt_text=(alt_text)
      if !alt_text.nil? && alt_text.to_s.length > 128
        fail ArgumentError, 'invalid value for "alt_text", the character length must be smaller than or equal to 128.'
      end

      @alt_text = alt_text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(size)
      validator = EnumAttributeValidator.new('String', ["compact", "large"])
      unless validator.valid?(size)
        fail ArgumentError, "invalid value for \"size\", must be one of #{validator.allowable_values}."
      end
      @size = size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          description == o.description &&
          media_url == o.media_url &&
          media_type == o.media_type &&
          alt_text == o.alt_text &&
          size == o.size &&
          actions == o.actions &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, description, media_url, media_type, alt_text, size, actions, metadata].hash
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
