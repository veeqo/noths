# frozen_string_literal: true

require 'date'

module Noths

  class Item
    attr_accessor :id

    attr_accessor :item_title

    attr_accessor :quantity

    attr_accessor :commission_vat_rate

    attr_accessor :listing_total_gross

    attr_accessor :product

    attr_accessor :options

    attr_accessor :financials


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'item_title' => :'item_title',
        :'quantity' => :'quantity',
        :'commission_vat_rate' => :'commission_vat_rate',
        :'listing_total_gross' => :'listing_total_gross',
        :'product' => :'product',
        :'options' => :'options',
        :'financials' => :'financials'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'item_title' => :'String',
        :'quantity' => :'Integer',
        :'commission_vat_rate' => :'String',
        :'listing_total_gross' => :'Money',
        :'product' => :'Product',
        :'options' => :'Array<ProductOption>',
        :'financials' => :'ItemFinancials'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'item_title')
        self.item_title = attributes[:'item_title']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'commission_vat_rate')
        self.commission_vat_rate = attributes[:'commission_vat_rate']
      end

      if attributes.has_key?(:'listing_total_gross')
        self.listing_total_gross = attributes[:'listing_total_gross']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.has_key?(:'financials')
        self.financials = attributes[:'financials']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @item_title.nil?
        invalid_properties.push("invalid value for 'item_title', item_title cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @commission_vat_rate.nil?
        invalid_properties.push("invalid value for 'commission_vat_rate', commission_vat_rate cannot be nil.")
      end

      if @listing_total_gross.nil?
        invalid_properties.push("invalid value for 'listing_total_gross', listing_total_gross cannot be nil.")
      end

      if @product.nil?
        invalid_properties.push("invalid value for 'product', product cannot be nil.")
      end

      if @options.nil?
        invalid_properties.push("invalid value for 'options', options cannot be nil.")
      end

      if @financials.nil?
        invalid_properties.push("invalid value for 'financials', financials cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @item_title.nil?
      return false if @quantity.nil?
      return false if @commission_vat_rate.nil?
      return false if @listing_total_gross.nil?
      return false if @product.nil?
      return false if @options.nil?
      return false if @financials.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          item_title == o.item_title &&
          quantity == o.quantity &&
          commission_vat_rate == o.commission_vat_rate &&
          listing_total_gross == o.listing_total_gross &&
          product == o.product &&
          options == o.options &&
          financials == o.financials
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, item_title, quantity, commission_vat_rate, listing_total_gross, product, options, financials].hash
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
