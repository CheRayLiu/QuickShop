# frozen_string_literal: true

class ShoppingCart < ApplicationRecord
  has_many :cart_items
  validates :user_id, presence: true, uniqueness: true
end
