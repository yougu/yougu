require 'spec_helper'

describe "/welcome/index" do
  before(:each) do
    render 'welcome/index'
  end

  it "should show you a link to a demo sprint" do
    response.should have_tag('a', %r[Demo Sprint])
  end
end
