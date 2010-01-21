require 'spec_helper'

describe Feature do
  before(:each) do
    @valid_attributes = {
      :description => "Start project",
      :effort => 4,
      :priority => 1,
    }
  end

  it "should create a new instance given valid attributes" do
    Feature.create!(@valid_attributes)
  end
end
