require 'rails_helper'

RSpec.describe Slot, type: :model do
  describe "validations" do
    let(:slot) { create(:slot) }

    it { expect(slot).to be_valid }
  end

  describe "associations" do
    let(:slot) { create(:slot) }

    it { expect(slot).to belong_to(:shop) }
  end

  describe "validations" do
    context "#end_time_after_start_time" do
      let(:slot) { create(:slot, start_time: Time.now, end_time: Time.now - 60) }

      it do
        expect { slot }
          .to raise_error(
            ActiveRecord::RecordInvalid,
            "La validation a échoué : End time #{I18n.t('activerecord.errors.models.slot.attributes.end_time.after_start_time')}"
          )
      end
    end
  end
end
