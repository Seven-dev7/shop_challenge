class ShopSlots
  attr_reader :shop

  def initialize(shop:)
    @shop = shop
  end

  def slots
    shop.slots.group_by(&:week_day)
  end
end
