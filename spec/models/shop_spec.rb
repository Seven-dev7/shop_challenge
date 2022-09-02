require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe "validations" do
    let(:shop) { create(:shop) }

    it { expect(shop).to be_valid }
  end
end
