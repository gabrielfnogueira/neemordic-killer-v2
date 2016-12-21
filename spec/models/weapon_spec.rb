require 'rails_helper'

RSpec.describe Weapon, type: :model do
    before do
    @weapon = Weapon.new(name: "Laptop")
  end

  subject { @weapon }

  describe "when name is not present" do
    before { @weapon.name = " " }
    it { should_not be_valid }
  end
end
