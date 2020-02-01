# frozen_string_literal: true

class ConvertCurrency < ApplicationService
  def initialize(source:, target:, amount:)
    @source = source
    @target = target
    @amount = amount.to_f
  end

  def call
    exchange_api_url = Rails.application.credentials[:currency_api_url]
    exchange_api_key = Rails.application.credentials[:currency_api_key]

    url = "#{exchange_api_url}?token=#{exchange_api_key}" \
          "&currency=#{@source}/#{@target}"

    res = RestClient.get(url)

    JSON.parse(res.body)['currency'][0]['value'].to_f * @amount
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end
end
