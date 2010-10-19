require 'spec_helper'

describe "user_sessions/edit.html.erb" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession,
      :new_record? => false
    ))
  end

  it "renders the edit user_session form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => user_session_path(@user_session), :method => "post" do
    end
  end
end
