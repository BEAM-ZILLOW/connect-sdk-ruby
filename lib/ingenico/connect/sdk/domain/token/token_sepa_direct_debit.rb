#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/abstract_token'
require 'ingenico/connect/sdk/domain/token/customer_token_with_contact_details'
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class TokenSepaDirectDebit < Ingenico::Connect::SDK::Domain::Token::AbstractToken

        # {Ingenico::Connect::SDK::Domain::Token::CustomerTokenWithContactDetails}
        attr_accessor :customer

        # {Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebit}
        attr_accessor :mandate

        def to_h
          hash = super
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'mandate', @mandate)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Token::CustomerTokenWithContactDetails.new_from_hash(hash['customer'])
          end
          if hash.has_key?('mandate')
            if !(hash['mandate'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mandate']]
            end
            @mandate = Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebit.new_from_hash(hash['mandate'])
          end
        end
      end
    end
  end
end
