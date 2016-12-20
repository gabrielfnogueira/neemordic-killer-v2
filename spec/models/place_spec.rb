require 'rails_helper'

RSpec.describe Place, type: :model do
  before do
    @place = Place.new(name: "Meeting Room")
  end

  subject { @place }

  describe "when name is not present" do
    before { @place.name = " " }
    it { should_not be_valid }
  end
end
