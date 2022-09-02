require 'rails_helper'

RSpec.describe ShopSlots, type: :service do
  describe 'success' do
    let(:shop) { create(:shop) }
    let!(:service) { described_class.new(shop: shop) }
    let!(:slots_monday) { create_list(:slot, 2, week_day: 0, shop: shop)}
    let!(:slots_tuesday) { create_list(:slot, 2, week_day: 1, shop: shop)}
    let!(:slots_wednesday) { create_list(:slot, 2, week_day: 2, shop: shop)}
    let!(:slots_thursday) { create_list(:slot, 2, week_day: 3, shop: shop)}
    let!(:slots_friday) { create_list(:slot, 2, week_day: 4, shop: shop)}
    let!(:slots_saturday) { create(:slot, week_day: 5, shop: shop)}

    context "output structure" do
      it 'has an Hash as output' do
        expect(service.slots.class).to be(Hash)
      end

      it 'has an array as value' do
        expect(service.slots.first.last.class).to be(Array)
      end

      it 'has 6 keys for 7 days' do
        expect(service.slots.keys.size).to eq(6)
      end
    end

    context "Contains slots for each week days" do
      it "contains Monday's slots" do
        expect(service.slots.values)
          .to include(slots_monday)
      end

      it "contains Tuesday's slots" do
        expect(service.slots.values)
          .to include(slots_tuesday)
      end

      it "contains Wednesday's slots" do
        expect(service.slots.values)
          .to include(slots_wednesday)
      end

      it "contains thursday's slots" do
        expect(service.slots.values)
          .to include(slots_thursday)
      end

      it "contains Friday's slots" do
        expect(service.slots.values)
          .to include(slots_friday)
      end

      it "contains Saturday's slots" do
        expect(service.slots.values.last.first)
          .to eq(slots_saturday)
      end

      context "Saturday must have only one slot" do
        it "Saturday has only one slot" do
          expect(service.slots['saturday'].size)
            .to eq(1)
        end
      end
    end
  end
end
