class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find_by(id: params[:id])
    @days = WeekDays.new.order
    @shop_slots = ShopSlots.new(shop: @shop).slots
  end
end
