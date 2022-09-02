require 'rails_helper'

RSpec.describe WeekDays, type: :service do
  let(:service) { described_class.new }
  let(:current_day) { Time.zone.now.strftime('%A') }
  let(:week_days) { Date::DAYNAMES }

  it do
    expect(service.order.class).to eq(Array)
  end

  it do
    expect(service.order).to include(current_day)
  end

  it do
    expect(service.order.first).to eq(current_day)
  end
end
