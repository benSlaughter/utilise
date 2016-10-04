require 'hashie/mash'

module Utilise
  module Augment
    # Module for hashie extended classes
    module Crash
      # Creates a hashie mash that raises an error when a key is not present
      class Bash < Hashie::Mash
        # The default proc to be used for the bash hash
        DEFAULT_PROC = lambda do |hash, key|
          raise NameError, "No key '#{key}' in #{hash.to_hash.inspect}"
        end

        def initialize(source_hash = nil, default = nil, &blk)
          default ? super(source_hash, default) : super(source_hash, &blk)
          recursively_freeze(self)
        end

        # recursively apply the default proc to all hashes
        def recursively_freeze(obj)
          case obj
          when Array
            obj.each { |o| recursively_freeze(o) }
          when Hash
            obj.default_proc = DEFAULT_PROC
            recursively_freeze(obj.values)
          end
        end
      end
    end
  end
end
