# frozen_string_literal: true

require 'date'

module Noths

  class ItemFinancials
    attr_accessor :commission_rate

    attr_accessor :commission_vat_rate

    attr_accessor :commission

    attr_accessor :listing_price

    attr_accessor :listing_total

    attr_accessor :listing_discounted_price


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commission_rate' => :'commission_rate',
        :'commission_vat_rate' => :'commission_vat_rate',
        :'commission' => :'commission',
        :'listing_price' => :'listing_price',
        :'listing_total' => :'listing_total',
        :'listing_discounted_price' => :'listing_discounted_price'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'commission_rate' => :'Integer',
        :'commission_vat_rate' => :'Integer',
        :'commission' => :'FinancialsDetails',
        :'listing_price' => :'FinancialsDetails',
        :'listing_total' => :'FinancialsDetails',
        :'listing_discounted_price' => :'FinancialsDetails'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'commission_rate')
        self.commission_rate = attributes[:'commission_rate']
      end

      if attributes.has_key?(:'commission_vat_rate')
        self.commission_vat_rate = attributes[:'commission_vat_rate']
      end

      if attributes.has_key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.has_key?(:'listing_price')
        self.listing_price = attributes[:'listing_price']
      end

      if attributes.has_key?(:'listing_total')
        self.listing_total = attributes[:'listing_total']
      end

      if attributes.has_key?(:'listing_discounted_price')
        self.listing_discounted_price = attributes[:'listing_discounted_price']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @commission_rate.nil?
        invalid_properties.push("invalid value for 'commission_rate', commission_rate cannot be nil.")
      end

      if @commission_vat_rate.nil?
        invalid_properties.push("invalid value for 'commission_vat_rate', commission_vat_rate cannot be nil.")
      end

      if @commission.nil?
        invalid_properties.push("invalid value for 'commission', commission cannot be nil.")
      end

      if @listing_price.nil?
        invalid_properties.push("invalid value for 'listing_price', listing_price cannot be nil.")
      end

      if @listing_total.nil?
        invalid_properties.push("invalid value for 'listing_total', listing_total cannot be nil.")
      end

      if @listing_discounted_price.nil?
        invalid_properties.push("invalid value for 'listing_discounted_price', listing_discounted_price cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @commission_rate.nil?
      return false if @commission_vat_rate.nil?
      return false if @commission.nil?
      return false if @listing_price.nil?
      return false if @listing_total.nil?
      return false if @listing_discounted_price.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commission_rate == o.commission_rate &&
          commission_vat_rate == o.commission_vat_rate &&
          commission == o.commission &&
          listing_price == o.listing_price &&
          listing_total == o.listing_total &&
          listing_discounted_price == o.listing_discounted_price
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [commission_rate, commission_vat_rate, commission, listing_price, listing_total, listing_discounted_price].hash
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
