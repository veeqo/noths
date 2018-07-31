# frozen_string_literal: true

require 'date'

module Noths

  class Order
    attr_accessor :id

    attr_accessor :state

    attr_accessor :confirm_by

    attr_accessor :estimated_dispatch_at

    attr_accessor :placed_at

    attr_accessor :expired_at

    attr_accessor :declined_at

    attr_accessor :accepted_at

    attr_accessor :dispatched_at

    attr_accessor :archived_at

    attr_accessor :repeat_customer

    attr_accessor :customer_expected_delivery_date

    attr_accessor :number

    attr_accessor :dispatch_note_viewed

    attr_accessor :express

    attr_accessor :partner_name

    attr_accessor :delivery_recipient_name

    attr_accessor :delivery_recipient_first_name

    attr_accessor :delivery_recipient_last_name

    attr_accessor :international

    attr_accessor :dispatch_overdue

    attr_accessor :gift

    attr_accessor :gift_message

    attr_accessor :gift_wrap

    attr_accessor :gift_receipt

    attr_accessor :delivery_note

    attr_accessor :has_enquiry

    attr_accessor :estimated_delivery_date

    # null in sites where rebates are not offered
    attr_accessor :rebate_qualified

    # null in sites where rebates are not offered
    attr_accessor :rebate_achieved

    attr_accessor :financials

    attr_accessor :promotion_discount

    attr_accessor :promotion_present

    attr_accessor :remaining_refund_amount

    attr_accessor :refund_total

    attr_accessor :extra_refund_amount

    attr_accessor :user

    attr_accessor :delivery_address

    attr_accessor :delivery_zone

    attr_accessor :delivery_service

    attr_accessor :order_detail

    attr_accessor :order_total

    attr_accessor :delivery_total

    attr_accessor :enquiry

    attr_accessor :items

    attr_accessor :links


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'state' => :'state',
        :'confirm_by' => :'confirm_by',
        :'estimated_dispatch_at' => :'estimated_dispatch_at',
        :'placed_at' => :'placed_at',
        :'expired_at' => :'expired_at',
        :'declined_at' => :'declined_at',
        :'accepted_at' => :'accepted_at',
        :'dispatched_at' => :'dispatched_at',
        :'archived_at' => :'archived_at',
        :'repeat_customer' => :'repeat_customer',
        :'customer_expected_delivery_date' => :'customer_expected_delivery_date',
        :'number' => :'number',
        :'dispatch_note_viewed' => :'dispatch_note_viewed',
        :'express' => :'express',
        :'partner_name' => :'partner_name',
        :'delivery_recipient_name' => :'delivery_recipient_name',
        :'delivery_recipient_first_name' => :'delivery_recipient_first_name',
        :'delivery_recipient_last_name' => :'delivery_recipient_last_name',
        :'international' => :'international',
        :'dispatch_overdue' => :'dispatch_overdue',
        :'gift' => :'gift',
        :'gift_message' => :'gift_message',
        :'gift_wrap' => :'gift_wrap',
        :'gift_receipt' => :'gift_receipt',
        :'delivery_note' => :'delivery_note',
        :'has_enquiry' => :'has_enquiry',
        :'estimated_delivery_date' => :'estimated_delivery_date',
        :'rebate_qualified' => :'rebate_qualified',
        :'rebate_achieved' => :'rebate_achieved',
        :'financials' => :'financials',
        :'promotion_discount' => :'promotion_discount',
        :'promotion_present' => :'promotion_present',
        :'remaining_refund_amount' => :'remaining_refund_amount',
        :'refund_total' => :'refund_total',
        :'extra_refund_amount' => :'extra_refund_amount',
        :'user' => :'user',
        :'delivery_address' => :'delivery_address',
        :'delivery_zone' => :'delivery_zone',
        :'delivery_service' => :'delivery_service',
        :'order_detail' => :'order_detail',
        :'order_total' => :'order_total',
        :'delivery_total' => :'delivery_total',
        :'enquiry' => :'enquiry',
        :'items' => :'items',
        :'links' => :'links'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'state' => :'String',
        :'confirm_by' => :'DateTime',
        :'estimated_dispatch_at' => :'DateTime',
        :'placed_at' => :'DateTime',
        :'expired_at' => :'DateTime',
        :'declined_at' => :'DateTime',
        :'accepted_at' => :'DateTime',
        :'dispatched_at' => :'DateTime',
        :'archived_at' => :'DateTime',
        :'repeat_customer' => :'BOOLEAN',
        :'customer_expected_delivery_date' => :'DateTime',
        :'number' => :'String',
        :'dispatch_note_viewed' => :'BOOLEAN',
        :'express' => :'BOOLEAN',
        :'partner_name' => :'String',
        :'delivery_recipient_name' => :'String',
        :'delivery_recipient_first_name' => :'String',
        :'delivery_recipient_last_name' => :'String',
        :'international' => :'BOOLEAN',
        :'dispatch_overdue' => :'BOOLEAN',
        :'gift' => :'BOOLEAN',
        :'gift_message' => :'String',
        :'gift_wrap' => :'BOOLEAN',
        :'gift_receipt' => :'BOOLEAN',
        :'delivery_note' => :'String',
        :'has_enquiry' => :'BOOLEAN',
        :'estimated_delivery_date' => :'DateTime',
        :'rebate_qualified' => :'BOOLEAN',
        :'rebate_achieved' => :'BOOLEAN',
        :'financials' => :'Financials',
        :'promotion_discount' => :'Integer',
        :'promotion_present' => :'BOOLEAN',
        :'remaining_refund_amount' => :'Money',
        :'refund_total' => :'Money',
        :'extra_refund_amount' => :'Money',
        :'user' => :'User',
        :'delivery_address' => :'DeliveryAddress',
        :'delivery_zone' => :'DeliveryZone',
        :'delivery_service' => :'DeliveryService',
        :'order_detail' => :'OrderDetail',
        :'order_total' => :'Money',
        :'delivery_total' => :'Money',
        :'enquiry' => :'Enquiry',
        :'items' => :'Array<Item>',
        :'links' => :'Array<Link>'
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

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'confirm_by')
        self.confirm_by = attributes[:'confirm_by']
      end

      if attributes.has_key?(:'estimated_dispatch_at')
        self.estimated_dispatch_at = attributes[:'estimated_dispatch_at']
      end

      if attributes.has_key?(:'placed_at')
        self.placed_at = attributes[:'placed_at']
      end

      if attributes.has_key?(:'expired_at')
        self.expired_at = attributes[:'expired_at']
      end

      if attributes.has_key?(:'declined_at')
        self.declined_at = attributes[:'declined_at']
      end

      if attributes.has_key?(:'accepted_at')
        self.accepted_at = attributes[:'accepted_at']
      end

      if attributes.has_key?(:'dispatched_at')
        self.dispatched_at = attributes[:'dispatched_at']
      end

      if attributes.has_key?(:'archived_at')
        self.archived_at = attributes[:'archived_at']
      end

      if attributes.has_key?(:'repeat_customer')
        self.repeat_customer = attributes[:'repeat_customer']
      end

      if attributes.has_key?(:'customer_expected_delivery_date')
        self.customer_expected_delivery_date = attributes[:'customer_expected_delivery_date']
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'dispatch_note_viewed')
        self.dispatch_note_viewed = attributes[:'dispatch_note_viewed']
      end

      if attributes.has_key?(:'express')
        self.express = attributes[:'express']
      end

      if attributes.has_key?(:'partner_name')
        self.partner_name = attributes[:'partner_name']
      end

      if attributes.has_key?(:'delivery_recipient_name')
        self.delivery_recipient_name = attributes[:'delivery_recipient_name']
      end

      if attributes.has_key?(:'delivery_recipient_first_name')
        self.delivery_recipient_first_name = attributes[:'delivery_recipient_first_name']
      end

      if attributes.has_key?(:'delivery_recipient_last_name')
        self.delivery_recipient_last_name = attributes[:'delivery_recipient_last_name']
      end

      if attributes.has_key?(:'international')
        self.international = attributes[:'international']
      end

      if attributes.has_key?(:'dispatch_overdue')
        self.dispatch_overdue = attributes[:'dispatch_overdue']
      end

      if attributes.has_key?(:'gift')
        self.gift = attributes[:'gift']
      end

      if attributes.has_key?(:'gift_message')
        self.gift_message = attributes[:'gift_message']
      end

      if attributes.has_key?(:'gift_wrap')
        self.gift_wrap = attributes[:'gift_wrap']
      end

      if attributes.has_key?(:'gift_receipt')
        self.gift_receipt = attributes[:'gift_receipt']
      end

      if attributes.has_key?(:'delivery_note')
        self.delivery_note = attributes[:'delivery_note']
      end

      if attributes.has_key?(:'has_enquiry')
        self.has_enquiry = attributes[:'has_enquiry']
      end

      if attributes.has_key?(:'estimated_delivery_date')
        self.estimated_delivery_date = attributes[:'estimated_delivery_date']
      end

      if attributes.has_key?(:'rebate_qualified')
        self.rebate_qualified = attributes[:'rebate_qualified']
      end

      if attributes.has_key?(:'rebate_achieved')
        self.rebate_achieved = attributes[:'rebate_achieved']
      end

      if attributes.has_key?(:'financials')
        self.financials = attributes[:'financials']
      end

      if attributes.has_key?(:'promotion_discount')
        self.promotion_discount = attributes[:'promotion_discount']
      end

      if attributes.has_key?(:'promotion_present')
        self.promotion_present = attributes[:'promotion_present']
      end

      if attributes.has_key?(:'remaining_refund_amount')
        self.remaining_refund_amount = attributes[:'remaining_refund_amount']
      end

      if attributes.has_key?(:'refund_total')
        self.refund_total = attributes[:'refund_total']
      end

      if attributes.has_key?(:'extra_refund_amount')
        self.extra_refund_amount = attributes[:'extra_refund_amount']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'delivery_address')
        self.delivery_address = attributes[:'delivery_address']
      end

      if attributes.has_key?(:'delivery_zone')
        self.delivery_zone = attributes[:'delivery_zone']
      end

      if attributes.has_key?(:'delivery_service')
        self.delivery_service = attributes[:'delivery_service']
      end

      if attributes.has_key?(:'order_detail')
        self.order_detail = attributes[:'order_detail']
      end

      if attributes.has_key?(:'order_total')
        self.order_total = attributes[:'order_total']
      end

      if attributes.has_key?(:'delivery_total')
        self.delivery_total = attributes[:'delivery_total']
      end

      if attributes.has_key?(:'enquiry')
        self.enquiry = attributes[:'enquiry']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @confirm_by.nil?
        invalid_properties.push("invalid value for 'confirm_by', confirm_by cannot be nil.")
      end

      if @estimated_dispatch_at.nil?
        invalid_properties.push("invalid value for 'estimated_dispatch_at', estimated_dispatch_at cannot be nil.")
      end

      if @placed_at.nil?
        invalid_properties.push("invalid value for 'placed_at', placed_at cannot be nil.")
      end

      if @expired_at.nil?
        invalid_properties.push("invalid value for 'expired_at', expired_at cannot be nil.")
      end

      if @declined_at.nil?
        invalid_properties.push("invalid value for 'declined_at', declined_at cannot be nil.")
      end

      if @accepted_at.nil?
        invalid_properties.push("invalid value for 'accepted_at', accepted_at cannot be nil.")
      end

      if @dispatched_at.nil?
        invalid_properties.push("invalid value for 'dispatched_at', dispatched_at cannot be nil.")
      end

      if @repeat_customer.nil?
        invalid_properties.push("invalid value for 'repeat_customer', repeat_customer cannot be nil.")
      end

      if @customer_expected_delivery_date.nil?
        invalid_properties.push("invalid value for 'customer_expected_delivery_date', customer_expected_delivery_date cannot be nil.")
      end

      if @number.nil?
        invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end

      if @dispatch_note_viewed.nil?
        invalid_properties.push("invalid value for 'dispatch_note_viewed', dispatch_note_viewed cannot be nil.")
      end

      if @express.nil?
        invalid_properties.push("invalid value for 'express', express cannot be nil.")
      end

      if @partner_name.nil?
        invalid_properties.push("invalid value for 'partner_name', partner_name cannot be nil.")
      end

      if @delivery_recipient_name.nil?
        invalid_properties.push("invalid value for 'delivery_recipient_name', delivery_recipient_name cannot be nil.")
      end

      if @delivery_recipient_first_name.nil?
        invalid_properties.push("invalid value for 'delivery_recipient_first_name', delivery_recipient_first_name cannot be nil.")
      end

      if @delivery_recipient_last_name.nil?
        invalid_properties.push("invalid value for 'delivery_recipient_last_name', delivery_recipient_last_name cannot be nil.")
      end

      if @international.nil?
        invalid_properties.push("invalid value for 'international', international cannot be nil.")
      end

      if @dispatch_overdue.nil?
        invalid_properties.push("invalid value for 'dispatch_overdue', dispatch_overdue cannot be nil.")
      end

      if @gift.nil?
        invalid_properties.push("invalid value for 'gift', gift cannot be nil.")
      end

      if @gift_message.nil?
        invalid_properties.push("invalid value for 'gift_message', gift_message cannot be nil.")
      end

      if @gift_wrap.nil?
        invalid_properties.push("invalid value for 'gift_wrap', gift_wrap cannot be nil.")
      end

      if @gift_receipt.nil?
        invalid_properties.push("invalid value for 'gift_receipt', gift_receipt cannot be nil.")
      end

      if @delivery_note.nil?
        invalid_properties.push("invalid value for 'delivery_note', delivery_note cannot be nil.")
      end

      if @has_enquiry.nil?
        invalid_properties.push("invalid value for 'has_enquiry', has_enquiry cannot be nil.")
      end

      if @estimated_delivery_date.nil?
        invalid_properties.push("invalid value for 'estimated_delivery_date', estimated_delivery_date cannot be nil.")
      end

      if @financials.nil?
        invalid_properties.push("invalid value for 'financials', financials cannot be nil.")
      end

      if @promotion_discount.nil?
        invalid_properties.push("invalid value for 'promotion_discount', promotion_discount cannot be nil.")
      end

      if @promotion_present.nil?
        invalid_properties.push("invalid value for 'promotion_present', promotion_present cannot be nil.")
      end

      if @remaining_refund_amount.nil?
        invalid_properties.push("invalid value for 'remaining_refund_amount', remaining_refund_amount cannot be nil.")
      end

      if @refund_total.nil?
        invalid_properties.push("invalid value for 'refund_total', refund_total cannot be nil.")
      end

      if @extra_refund_amount.nil?
        invalid_properties.push("invalid value for 'extra_refund_amount', extra_refund_amount cannot be nil.")
      end

      if @user.nil?
        invalid_properties.push("invalid value for 'user', user cannot be nil.")
      end

      if @delivery_address.nil?
        invalid_properties.push("invalid value for 'delivery_address', delivery_address cannot be nil.")
      end

      if @delivery_zone.nil?
        invalid_properties.push("invalid value for 'delivery_zone', delivery_zone cannot be nil.")
      end

      if @delivery_service.nil?
        invalid_properties.push("invalid value for 'delivery_service', delivery_service cannot be nil.")
      end

      if @order_detail.nil?
        invalid_properties.push("invalid value for 'order_detail', order_detail cannot be nil.")
      end

      if @order_total.nil?
        invalid_properties.push("invalid value for 'order_total', order_total cannot be nil.")
      end

      if @delivery_total.nil?
        invalid_properties.push("invalid value for 'delivery_total', delivery_total cannot be nil.")
      end

      if @enquiry.nil?
        invalid_properties.push("invalid value for 'enquiry', enquiry cannot be nil.")
      end

      if @items.nil?
        invalid_properties.push("invalid value for 'items', items cannot be nil.")
      end

      if @links.nil?
        invalid_properties.push("invalid value for 'links', links cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @state.nil?
      return false if @confirm_by.nil?
      return false if @estimated_dispatch_at.nil?
      return false if @placed_at.nil?
      return false if @expired_at.nil?
      return false if @declined_at.nil?
      return false if @accepted_at.nil?
      return false if @dispatched_at.nil?
      return false if @repeat_customer.nil?
      return false if @customer_expected_delivery_date.nil?
      return false if @number.nil?
      return false if @dispatch_note_viewed.nil?
      return false if @express.nil?
      return false if @partner_name.nil?
      return false if @delivery_recipient_name.nil?
      return false if @delivery_recipient_first_name.nil?
      return false if @delivery_recipient_last_name.nil?
      return false if @international.nil?
      return false if @dispatch_overdue.nil?
      return false if @gift.nil?
      return false if @gift_message.nil?
      return false if @gift_wrap.nil?
      return false if @gift_receipt.nil?
      return false if @delivery_note.nil?
      return false if @has_enquiry.nil?
      return false if @estimated_delivery_date.nil?
      return false if @financials.nil?
      return false if @promotion_discount.nil?
      return false if @promotion_present.nil?
      return false if @remaining_refund_amount.nil?
      return false if @refund_total.nil?
      return false if @extra_refund_amount.nil?
      return false if @user.nil?
      return false if @delivery_address.nil?
      return false if @delivery_zone.nil?
      return false if @delivery_service.nil?
      return false if @order_detail.nil?
      return false if @order_total.nil?
      return false if @delivery_total.nil?
      return false if @enquiry.nil?
      return false if @items.nil?
      return false if @links.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          state == o.state &&
          confirm_by == o.confirm_by &&
          estimated_dispatch_at == o.estimated_dispatch_at &&
          placed_at == o.placed_at &&
          expired_at == o.expired_at &&
          declined_at == o.declined_at &&
          accepted_at == o.accepted_at &&
          dispatched_at == o.dispatched_at &&
          archived_at == o.archived_at &&
          repeat_customer == o.repeat_customer &&
          customer_expected_delivery_date == o.customer_expected_delivery_date &&
          number == o.number &&
          dispatch_note_viewed == o.dispatch_note_viewed &&
          express == o.express &&
          partner_name == o.partner_name &&
          delivery_recipient_name == o.delivery_recipient_name &&
          delivery_recipient_first_name == o.delivery_recipient_first_name &&
          delivery_recipient_last_name == o.delivery_recipient_last_name &&
          international == o.international &&
          dispatch_overdue == o.dispatch_overdue &&
          gift == o.gift &&
          gift_message == o.gift_message &&
          gift_wrap == o.gift_wrap &&
          gift_receipt == o.gift_receipt &&
          delivery_note == o.delivery_note &&
          has_enquiry == o.has_enquiry &&
          estimated_delivery_date == o.estimated_delivery_date &&
          rebate_qualified == o.rebate_qualified &&
          rebate_achieved == o.rebate_achieved &&
          financials == o.financials &&
          promotion_discount == o.promotion_discount &&
          promotion_present == o.promotion_present &&
          remaining_refund_amount == o.remaining_refund_amount &&
          refund_total == o.refund_total &&
          extra_refund_amount == o.extra_refund_amount &&
          user == o.user &&
          delivery_address == o.delivery_address &&
          delivery_zone == o.delivery_zone &&
          delivery_service == o.delivery_service &&
          order_detail == o.order_detail &&
          order_total == o.order_total &&
          delivery_total == o.delivery_total &&
          enquiry == o.enquiry &&
          items == o.items &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, state, confirm_by, estimated_dispatch_at, placed_at, expired_at, declined_at, accepted_at, dispatched_at, archived_at, repeat_customer, customer_expected_delivery_date, number, dispatch_note_viewed, express, partner_name, delivery_recipient_name, delivery_recipient_first_name, delivery_recipient_last_name, international, dispatch_overdue, gift, gift_message, gift_wrap, gift_receipt, delivery_note, has_enquiry, estimated_delivery_date, rebate_qualified, rebate_achieved, financials, promotion_discount, promotion_present, remaining_refund_amount, refund_total, extra_refund_amount, user, delivery_address, delivery_zone, delivery_service, order_detail, order_total, delivery_total, enquiry, items, links].hash
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
        next if value.nil?
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
