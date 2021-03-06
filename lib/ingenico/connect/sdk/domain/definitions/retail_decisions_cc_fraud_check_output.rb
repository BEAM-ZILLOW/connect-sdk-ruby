#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class RetailDecisionsCCFraudCheckOutput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :fraud_code

        # String
        attr_accessor :fraud_neural

        # String
        attr_accessor :fraud_rcf

        def to_h
          hash = super
          add_to_hash(hash, 'fraudCode', @fraud_code)
          add_to_hash(hash, 'fraudNeural', @fraud_neural)
          add_to_hash(hash, 'fraudRCF', @fraud_rcf)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudCode')
            @fraud_code = hash['fraudCode']
          end
          if hash.has_key?('fraudNeural')
            @fraud_neural = hash['fraudNeural']
          end
          if hash.has_key?('fraudRCF')
            @fraud_rcf = hash['fraudRCF']
          end
        end
      end
    end
  end
end
