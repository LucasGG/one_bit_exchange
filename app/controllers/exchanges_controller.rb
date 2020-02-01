# frozen_string_literal: true

class ExchangesController < ApplicationController
  def index; end

  def convert
    value = ConvertCurrency.call(source: params[:source_currency],
                                 target: params[:target_currency],
                                 amount: params[:amount])

    render json: { "value": value }
  end
end
