require 'spec_helper'

describe Features do
  before(:each) do
    @valid_attributes = {
      :integer => ,
      :integer => ,
      :string => 
    }
  end

  it "should create a new instance given valid attributes" do
    Features.create!(@valid_attributes)
  end
end
