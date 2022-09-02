shop = Shop.create(name: "test")

(0..6).each do |value|
  next if value == 6

  if value == 5
    Slot.create!(
      start_time: Time.new(2008, 6, 21, 11, 30),
      end_time: Time.new(2008, 6, 21, 16, 00),
      week_day: value.to_i,
      shop: shop
    )
  else
    Slot.create!(
      start_time: Time.new(2008, 6, 21, 11, 30),
      end_time: Time.new(2008, 6, 21, 16, 00),
      week_day: value.to_i,
      shop: shop
    )
    Slot.create!(
      start_time: Time.new(2008, 6, 21, 18, 00),
      end_time: Time.new(2008, 6, 21, 21, 00),
      week_day: value.to_i,
      shop: shop
    )
  end
end
