# frozen_string_literal: true

class ExchangesController < ApplicationController
  def index; end

  def convert
    converted = CurrencyDataFeed::ConvertCurrency.call(
      source: params[:source_currency],
      target: params[:target_currency],
      amount: BigDecimal(params[:amount])
    )

    render json: { "value": converted }
  end
end
