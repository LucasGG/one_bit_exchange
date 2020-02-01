# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Currency' do
  it 'exchange' do
    amount = rand(0..9999)
    res = ExchangeService.new('USD', 'BRL', amount).perform
    expect(res.is_a?(Numeric)).to be(true)
    expect(res != 0 || amount == 0).to be(true)
  end
end
