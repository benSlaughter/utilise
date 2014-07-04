module Utilise
  module Augment
    module Bool

      # Returns bool based on object passed
      #
      # @param object [Object] the object
      # @return [Object] returns object boolean
      def to_bool object = self
        case object
        when String, Fixnum, Symbol
          bool_it object
        when Hash
          bool_hash object
        when Array
          bool_array object
        end
      end

      # Iterates through hash and updates each key
      # value to a boolean if it matches rules
      #
      # @param hash [Hash] the hash
      def bool_hash hash
        hash.each do |k,v|
          val = to_bool(hash[k])
          hash[k] = val unless val.nil?
        end
      end

      # Iterates through array and updates each
      # element to a boolean if it matches rules
      #
      # @param array [Array] the array
      def bool_array array
        array.each_index do |i|
          val = to_bool(array[i])
          array[i] = val unless val.nil?
        end
      end

      # Returns boolean value if object matches rules
      #
      # @param array [Array] the array
      # @returns [Boolean] true/false returned
      def bool_it object
        case object.to_s
        when /^true$/i, /^yes$/i, /^t$/i, /^1$/i
          true
        when /^false$/i, /^no$/i, /^f$/i, /^0$/i
          false
        end
      end
    end
  end
end
