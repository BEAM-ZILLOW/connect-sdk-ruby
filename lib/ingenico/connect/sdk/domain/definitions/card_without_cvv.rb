#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_essentials'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class CardWithoutCvv < Ingenico::Connect::SDK::Domain::Definitions::CardEssentials

        # String
        attr_accessor :cardholder_name

        # String
        attr_accessor :issue_number

        def to_h
          hash = super
          add_to_hash(hash, 'cardholderName', @cardholder_name)
          add_to_hash(hash, 'issueNumber', @issue_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardholderName')
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key?('issueNumber')
            @issue_number = hash['issueNumber']
          end
        end
      end
    end
  end
end
