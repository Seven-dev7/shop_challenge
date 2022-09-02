class AddShopReferenceToSlot < ActiveRecord::Migration[7.0]
  def change
    add_reference :slots, :shop, null: false, foreign_key: {to_table: :shops}, index: true
  end
end
