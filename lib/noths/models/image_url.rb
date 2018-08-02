# frozen_string_literal: true

require 'date'

module Noths

  class ImageUrl
    attr_accessor :micro_url

    attr_accessor :mini_url

    attr_accessor :thumb_url

    attr_accessor :medium_url

    attr_accessor :preview_url

    attr_accessor :normal_url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'micro_url' => :'micro_url',
        :'mini_url' => :'mini_url',
        :'thumb_url' => :'thumb_url',
        :'medium_url' => :'medium_url',
        :'preview_url' => :'preview_url',
        :'normal_url' => :'normal_url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'micro_url' => :'String',
        :'mini_url' => :'String',
        :'thumb_url' => :'String',
        :'medium_url' => :'String',
        :'preview_url' => :'String',
        :'normal_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'micro_url')
        self.micro_url = attributes[:'micro_url']
      end

      if attributes.has_key?(:'mini_url')
        self.mini_url = attributes[:'mini_url']
      end

      if attributes.has_key?(:'thumb_url')
        self.thumb_url = attributes[:'thumb_url']
      end

      if attributes.has_key?(:'medium_url')
        self.medium_url = attributes[:'medium_url']
      end

      if attributes.has_key?(:'preview_url')
        self.preview_url = attributes[:'preview_url']
      end

      if attributes.has_key?(:'normal_url')
        self.normal_url = attributes[:'normal_url']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @micro_url.nil?
        invalid_properties.push("invalid value for 'micro_url', micro_url cannot be nil.")
      end

      if @mini_url.nil?
        invalid_properties.push("invalid value for 'mini_url', mini_url cannot be nil.")
      end

      if @thumb_url.nil?
        invalid_properties.push("invalid value for 'thumb_url', thumb_url cannot be nil.")
      end

      if @medium_url.nil?
        invalid_properties.push("invalid value for 'medium_url', medium_url cannot be nil.")
      end

      if @preview_url.nil?
        invalid_properties.push("invalid value for 'preview_url', preview_url cannot be nil.")
      end

      if @normal_url.nil?
        invalid_properties.push("invalid value for 'normal_url', normal_url cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @micro_url.nil?
      return false if @mini_url.nil?
      return false if @thumb_url.nil?
      return false if @medium_url.nil?
      return false if @preview_url.nil?
      return false if @normal_url.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          micro_url == o.micro_url &&
          mini_url == o.mini_url &&
          thumb_url == o.thumb_url &&
          medium_url == o.medium_url &&
          preview_url == o.preview_url &&
          normal_url == o.normal_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [micro_url, mini_url, thumb_url, medium_url, preview_url, normal_url].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = Noths.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
