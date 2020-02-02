# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CurrencyDataFeed::ConvertCurrency do
  subject(:converter) { described_class }

  it 'converted currency is bigger or equal to zero' do
    converted = converter.call(source: 'USD',
                               target: 'BRL',
                               amount: BigDecimal((rand * 10_000.0).to_s))
    expect(converted).to be_between(0, BigDecimal::INFINITY)
  end

  it 'converts from bitcoin to any currency' do
    converted = converter.call(source: 'BTC',
                               target: 'BRL',
                               amount: BigDecimal((rand * 10_000.0).to_s))
    expect(converted).to be_between(0, BigDecimal::INFINITY)
  end
end
