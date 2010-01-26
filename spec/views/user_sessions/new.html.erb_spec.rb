require 'spec_helper'

describe "/user_sessions/new" do
  #FIXME
  before(:each) do
    pending
    render 'user_sessions/new'
  end

  #Delete this example and add some real ones or delete this file
  #FIXME
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/user_sessions/new])
  end
end
