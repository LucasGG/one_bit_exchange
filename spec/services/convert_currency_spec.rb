# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ConvertCurrency do
  let(:converted_currency) do
    described_class.call(
      source: 'USD',
      target: 'BRL',
      amount: rand(0..9999)
    )
  end

  it 'converted currency is a numeric' do
    expect(converted_currency.is_a?(Numeric)).to be(true)
  end

  it 'converted currency is bigger or equal to zero' do
    expect(converted_currency >= 0).to be(true)
  end
end
