#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentProduct863SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :integration_type

        def to_h
          hash = super
          add_to_hash(hash, 'integrationType', @integration_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('integrationType')
            @integration_type = hash['integrationType']
          end
        end
      end
    end
  end
end
