# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Exchange currency process', type: :system, js: true do
  it 'exchange value' do
    # visit '/'
    # within('#exchange_form') do
    #   select('EUR', from: 'source_currency')
    #   select('USD', from: 'target_currency')
    #   fill_in('amount', with: rand(1..9999))
    # end
    # p find('#result')
    # expect(find('#result')).to have_content('value')
  end
end
