=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module SibApiV3Sdk
  class GetExtendedCampaignStats
    # Overall statistics of the campaign
    attr_accessor :global_stats

    # List-wise statistics of the campaign.
    attr_accessor :campaign_stats

    # Number of clicks on mirror link
    attr_accessor :mirror_click

    # Number of remaning emails to send
    attr_accessor :remaining

    # Statistics about the number of clicks for the links
    attr_accessor :links_stats

    attr_accessor :stats_by_domain

    # Statistics about the campaign on the basis of various devices
    attr_accessor :stats_by_device

    # Statistics about the campaign on the basis of various browsers
    attr_accessor :stats_by_browser

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'global_stats' => :'globalStats',
        :'campaign_stats' => :'campaignStats',
        :'mirror_click' => :'mirrorClick',
        :'remaining' => :'remaining',
        :'links_stats' => :'linksStats',
        :'stats_by_domain' => :'statsByDomain',
        :'stats_by_device' => :'statsByDevice',
        :'stats_by_browser' => :'statsByBrowser'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'global_stats' => :'Object',
        :'campaign_stats' => :'Array<Object>',
        :'mirror_click' => :'Integer',
        :'remaining' => :'Integer',
        :'links_stats' => :'Object',
        :'stats_by_domain' => :'GetStatsByDomain',
        :'stats_by_device' => :'GetStatsByDevice',
        :'stats_by_browser' => :'GetStatsByBrowser'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'globalStats')
        self.global_stats = attributes[:'globalStats']
      end

      if attributes.has_key?(:'campaignStats')
        if (value = attributes[:'campaignStats']).is_a?(Array)
          self.campaign_stats = value
        end
      end

      if attributes.has_key?(:'mirrorClick')
        self.mirror_click = attributes[:'mirrorClick']
      end

      if attributes.has_key?(:'remaining')
        self.remaining = attributes[:'remaining']
      end

      if attributes.has_key?(:'linksStats')
        self.links_stats = attributes[:'linksStats']
      end

      if attributes.has_key?(:'statsByDomain')
        self.stats_by_domain = attributes[:'statsByDomain']
      end

      if attributes.has_key?(:'statsByDevice')
        self.stats_by_device = attributes[:'statsByDevice']
      end

      if attributes.has_key?(:'statsByBrowser')
        self.stats_by_browser = attributes[:'statsByBrowser']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @global_stats.nil?
        invalid_properties.push('invalid value for "global_stats", global_stats cannot be nil.')
      end

      if @campaign_stats.nil?
        invalid_properties.push('invalid value for "campaign_stats", campaign_stats cannot be nil.')
      end

      if @mirror_click.nil?
        invalid_properties.push('invalid value for "mirror_click", mirror_click cannot be nil.')
      end

      if @remaining.nil?
        invalid_properties.push('invalid value for "remaining", remaining cannot be nil.')
      end

      if @links_stats.nil?
        invalid_properties.push('invalid value for "links_stats", links_stats cannot be nil.')
      end

      if @stats_by_domain.nil?
        invalid_properties.push('invalid value for "stats_by_domain", stats_by_domain cannot be nil.')
      end

      if @stats_by_device.nil?
        invalid_properties.push('invalid value for "stats_by_device", stats_by_device cannot be nil.')
      end

      if @stats_by_browser.nil?
        invalid_properties.push('invalid value for "stats_by_browser", stats_by_browser cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @global_stats.nil?
      return false if @campaign_stats.nil?
      return false if @mirror_click.nil?
      return false if @remaining.nil?
      return false if @links_stats.nil?
      return false if @stats_by_domain.nil?
      return false if @stats_by_device.nil?
      return false if @stats_by_browser.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          global_stats == o.global_stats &&
          campaign_stats == o.campaign_stats &&
          mirror_click == o.mirror_click &&
          remaining == o.remaining &&
          links_stats == o.links_stats &&
          stats_by_domain == o.stats_by_domain &&
          stats_by_device == o.stats_by_device &&
          stats_by_browser == o.stats_by_browser
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [global_stats, campaign_stats, mirror_click, remaining, links_stats, stats_by_domain, stats_by_device, stats_by_browser].hash
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
        temp_model = SibApiV3Sdk.const_get(type).new
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
