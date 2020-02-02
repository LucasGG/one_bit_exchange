# frozen_string_literal: true

module CurrencyDataFeed
  class ConvertCurrency < ApplicationService
    AVAILABLE_CURRENCIES = {
      standard: %w[AUD BGN BRL CAD CHF CNY CZK DKK EUR GBP HKD HRK HUF IDR ILS
                   INR JPY KRW MXN MYR NOK NZD PHP PLN RON RUB SEK SGD THB TRY
                   USD ZAR],
      crypto: %w[BTC]
    }

    def initialize(source:, target:, amount:)
      @source = source
      @target = target
      @amount = amount
    end

    def call
      response = RestClient.get("#{route}?token=#{token}&" \
                                "currency=#{@source}/#{@target}")
      BigDecimal(parse(response)) * @amount
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end

    private

    def parse(response)
      JSON.parse(response.body)['currency'][0]['value']
    end

    def route
      Rails.application.credentials.currency_api_url
    end

    def token
      Rails.application.credentials.currency_api_key
    end
  end
end
