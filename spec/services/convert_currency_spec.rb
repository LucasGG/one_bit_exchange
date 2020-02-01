# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'ConvertCurrency' do
  it 'converts one currency to another' do
    res = ConvertCurrency.call(source: 'USD',
                               target: 'BRL',
                               amount: rand(0..9999))

    expect(res.is_a?(Numeric)).to be(true)
    expect(res != 0 || amount == 0).to be(true)
  end
end
