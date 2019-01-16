# frozen_string_literal: true

class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer(:quantity)
      t.timestamps
    end
  end
end
