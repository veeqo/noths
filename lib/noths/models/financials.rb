# frozen_string_literal: true

require 'date'

module Noths

  class Financials
    attr_accessor :commission

    attr_accessor :delivery_commission

    attr_accessor :items_commission

    attr_accessor :listing_delivery

    attr_accessor :listing_discount

    attr_accessor :listing_items

    attr_accessor :listing_subtotal

    attr_accessor :listing_total

    attr_accessor :manual_payment_total

    attr_accessor :purchase_delivery

    attr_accessor :purchase_discount

    attr_accessor :purchase_items

    attr_accessor :purchase_subtotal

    attr_accessor :purchase_total

    attr_accessor :partner_total

    attr_accessor :listing_items_discounted

    attr_accessor :listing_total_with_discount

    attr_accessor :manual_payments


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commission' => :'commission',
        :'delivery_commission' => :'delivery_commission',
        :'items_commission' => :'items_commission',
        :'listing_delivery' => :'listing_delivery',
        :'listing_discount' => :'listing_discount',
        :'listing_items' => :'listing_items',
        :'listing_subtotal' => :'listing_subtotal',
        :'listing_total' => :'listing_total',
        :'manual_payment_total' => :'manual_payment_total',
        :'purchase_delivery' => :'purchase_delivery',
        :'purchase_discount' => :'purchase_discount',
        :'purchase_items' => :'purchase_items',
        :'purchase_subtotal' => :'purchase_subtotal',
        :'purchase_total' => :'purchase_total',
        :'partner_total' => :'partner_total',
        :'listing_items_discounted' => :'listing_items_discounted',
        :'listing_total_with_discount' => :'listing_total_with_discount',
        :'manual_payments' => :'manual_payments'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'commission' => :'FinancialsDetails',
        :'delivery_commission' => :'FinancialsDetails',
        :'items_commission' => :'FinancialsDetails',
        :'listing_delivery' => :'FinancialsDetails',
        :'listing_discount' => :'FinancialsDetails',
        :'listing_items' => :'FinancialsDetails',
        :'listing_subtotal' => :'FinancialsDetails',
        :'listing_total' => :'FinancialsDetails',
        :'manual_payment_total' => :'FinancialsDetails',
        :'purchase_delivery' => :'FinancialsDetails',
        :'purchase_discount' => :'FinancialsDetails',
        :'purchase_items' => :'Array<FinancialsDetails>',
        :'purchase_subtotal' => :'FinancialsDetails',
        :'purchase_total' => :'FinancialsDetails',
        :'partner_total' => :'FinancialsDetails',
        :'listing_items_discounted' => :'FinancialsDetails',
        :'listing_total_with_discount' => :'FinancialsDetails',
        :'manual_payments' => :'Array<ManualPayment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.has_key?(:'delivery_commission')
        self.delivery_commission = attributes[:'delivery_commission']
      end

      if attributes.has_key?(:'items_commission')
        self.items_commission = attributes[:'items_commission']
      end

      if attributes.has_key?(:'listing_delivery')
        self.listing_delivery = attributes[:'listing_delivery']
      end

      if attributes.has_key?(:'listing_discount')
        self.listing_discount = attributes[:'listing_discount']
      end

      if attributes.has_key?(:'listing_items')
        self.listing_items = attributes[:'listing_items']
      end

      if attributes.has_key?(:'listing_subtotal')
        self.listing_subtotal = attributes[:'listing_subtotal']
      end

      if attributes.has_key?(:'listing_total')
        self.listing_total = attributes[:'listing_total']
      end

      if attributes.has_key?(:'manual_payment_total')
        self.manual_payment_total = attributes[:'manual_payment_total']
      end

      if attributes.has_key?(:'purchase_delivery')
        self.purchase_delivery = attributes[:'purchase_delivery']
      end

      if attributes.has_key?(:'purchase_discount')
        self.purchase_discount = attributes[:'purchase_discount']
      end

      if attributes.has_key?(:'purchase_items')
        if (value = attributes[:'purchase_items']).is_a?(Array)
          self.purchase_items = value
        end
      end

      if attributes.has_key?(:'purchase_subtotal')
        self.purchase_subtotal = attributes[:'purchase_subtotal']
      end

      if attributes.has_key?(:'purchase_total')
        self.purchase_total = attributes[:'purchase_total']
      end

      if attributes.has_key?(:'partner_total')
        self.partner_total = attributes[:'partner_total']
      end

      if attributes.has_key?(:'listing_items_discounted')
        self.listing_items_discounted = attributes[:'listing_items_discounted']
      end

      if attributes.has_key?(:'listing_total_with_discount')
        self.listing_total_with_discount = attributes[:'listing_total_with_discount']
      end

      if attributes.has_key?(:'manual_payments')
        if (value = attributes[:'manual_payments']).is_a?(Array)
          self.manual_payments = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @commission.nil?
        invalid_properties.push("invalid value for 'commission', commission cannot be nil.")
      end

      if @delivery_commission.nil?
        invalid_properties.push("invalid value for 'delivery_commission', delivery_commission cannot be nil.")
      end

      if @items_commission.nil?
        invalid_properties.push("invalid value for 'items_commission', items_commission cannot be nil.")
      end

      if @listing_delivery.nil?
        invalid_properties.push("invalid value for 'listing_delivery', listing_delivery cannot be nil.")
      end

      if @listing_discount.nil?
        invalid_properties.push("invalid value for 'listing_discount', listing_discount cannot be nil.")
      end

      if @listing_items.nil?
        invalid_properties.push("invalid value for 'listing_items', listing_items cannot be nil.")
      end

      if @listing_subtotal.nil?
        invalid_properties.push("invalid value for 'listing_subtotal', listing_subtotal cannot be nil.")
      end

      if @listing_total.nil?
        invalid_properties.push("invalid value for 'listing_total', listing_total cannot be nil.")
      end

      if @manual_payment_total.nil?
        invalid_properties.push("invalid value for 'manual_payment_total', manual_payment_total cannot be nil.")
      end

      if @purchase_delivery.nil?
        invalid_properties.push("invalid value for 'purchase_delivery', purchase_delivery cannot be nil.")
      end

      if @purchase_discount.nil?
        invalid_properties.push("invalid value for 'purchase_discount', purchase_discount cannot be nil.")
      end

      if @purchase_items.nil?
        invalid_properties.push("invalid value for 'purchase_items', purchase_items cannot be nil.")
      end

      if @purchase_subtotal.nil?
        invalid_properties.push("invalid value for 'purchase_subtotal', purchase_subtotal cannot be nil.")
      end

      if @purchase_total.nil?
        invalid_properties.push("invalid value for 'purchase_total', purchase_total cannot be nil.")
      end

      if @partner_total.nil?
        invalid_properties.push("invalid value for 'partner_total', partner_total cannot be nil.")
      end

      if @listing_items_discounted.nil?
        invalid_properties.push("invalid value for 'listing_items_discounted', listing_items_discounted cannot be nil.")
      end

      if @listing_total_with_discount.nil?
        invalid_properties.push("invalid value for 'listing_total_with_discount', listing_total_with_discount cannot be nil.")
      end

      if @manual_payments.nil?
        invalid_properties.push("invalid value for 'manual_payments', manual_payments cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @commission.nil?
      return false if @delivery_commission.nil?
      return false if @items_commission.nil?
      return false if @listing_delivery.nil?
      return false if @listing_discount.nil?
      return false if @listing_items.nil?
      return false if @listing_subtotal.nil?
      return false if @listing_total.nil?
      return false if @manual_payment_total.nil?
      return false if @purchase_delivery.nil?
      return false if @purchase_discount.nil?
      return false if @purchase_items.nil?
      return false if @purchase_subtotal.nil?
      return false if @purchase_total.nil?
      return false if @partner_total.nil?
      return false if @listing_items_discounted.nil?
      return false if @listing_total_with_discount.nil?
      return false if @manual_payments.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commission == o.commission &&
          delivery_commission == o.delivery_commission &&
          items_commission == o.items_commission &&
          listing_delivery == o.listing_delivery &&
          listing_discount == o.listing_discount &&
          listing_items == o.listing_items &&
          listing_subtotal == o.listing_subtotal &&
          listing_total == o.listing_total &&
          manual_payment_total == o.manual_payment_total &&
          purchase_delivery == o.purchase_delivery &&
          purchase_discount == o.purchase_discount &&
          purchase_items == o.purchase_items &&
          purchase_subtotal == o.purchase_subtotal &&
          purchase_total == o.purchase_total &&
          partner_total == o.partner_total &&
          listing_items_discounted == o.listing_items_discounted &&
          listing_total_with_discount == o.listing_total_with_discount &&
          manual_payments == o.manual_payments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [commission, delivery_commission, items_commission, listing_delivery, listing_discount, listing_items, listing_subtotal, listing_total, manual_payment_total, purchase_delivery, purchase_discount, purchase_items, purchase_subtotal, purchase_total, partner_total, listing_items_discounted, listing_total_with_discount, manual_payments].hash
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
