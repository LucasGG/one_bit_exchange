# frozen_string_literal: true

class ConvertCurrency < ApplicationService
  def initialize(source:, target:, amount:)
    @url = Rails.application.credentials[:currency_api_url]
    @key = Rails.application.credentials[:currency_api_key]
    @source = source
    @target = target
    @amount = BigDecimal(amount)
  end

  def call
    res = RestClient.get("#{@url}?token=#{@key}&currency=#{@source}/#{@target}")
    JSON.parse(res.body)['currency'][0]['value'].to_f * @amount
  rescue RestClient::ExceptionWithResponse => e
    e.response
  end
end
