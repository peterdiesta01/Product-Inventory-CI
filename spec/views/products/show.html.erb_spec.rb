# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
                                  name: 'Name',
                                  quantity: 2,
                                  price: '9.99'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
