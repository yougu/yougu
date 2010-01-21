require 'spec_helper'

describe Sprint do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :start_date => 3.weeks.ago,
      :end_date => 2.weeks.ago
    }
  end

  it "should create a new instance given valid attributes" do
    Sprint.create!(@valid_attributes)
  end
end
