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
end
