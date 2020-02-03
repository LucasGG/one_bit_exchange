# frozen_string_literal: true

module ExchangesHelper
  def currencies
    currencies = CurrencyDataFeed::ConvertCurrency::AVAILABLE_CURRENCIES
    currencies[:crypto] + ['----'] + currencies[:standard]
  end
end
