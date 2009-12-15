require 'spec_helper'

describe Sprint do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :start_date => ,
      :end_date => 
    }
  end

  it "should create a new instance given valid attributes" do
    Sprint.create!(@valid_attributes)
  end
end
