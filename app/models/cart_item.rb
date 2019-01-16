# frozen_string_literal: true

class CartItem < ApplicationRecord
  belongs_to :shopping_cart
  belongs_to :product
end
