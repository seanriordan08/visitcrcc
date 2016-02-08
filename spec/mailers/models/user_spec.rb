require "rails_helper"

RSpec.describe User, :type => :model do
  it "returns a full name" do
    @user = User.create!(first_name: "Andy", last_name: "Lindeman")


    expect(User.ordered_by_last_name).to eq([chelimsky, lindeman])
  end
end
