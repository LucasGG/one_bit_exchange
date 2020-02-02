# frozen_string_literal: true

module ExchangesHelper
  def currency_list
    currencies = CurrencyDataFeed::ConvertCurrency::AVAILABLE_CURRENCIES
    currencies[:standard] + ['----'] + currencies[:crypto]
  end
end
