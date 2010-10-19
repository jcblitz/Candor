require 'spec_helper'

describe UserSessionsController do

  def mock_user_session(stubs={})
    (@mock_user_session ||= mock_model(UserSession).as_null_object).tap do |user_session|
      user_session.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all user_sessions as @user_sessions" do
      UserSession.stub(:all) { [mock_user_session] }
      get :index
      assigns(:user_sessions).should eq([mock_user_session])
    end
  end

  describe "GET show" do
    it "assigns the requested user_session as @user_session" do
      UserSession.stub(:find).with("37") { mock_user_session }
      get :show, :id => "37"
      assigns(:user_session).should be(mock_user_session)
    end
  end

  describe "GET new" do
    it "assigns a new user_session as @user_session" do
      UserSession.stub(:new) { mock_user_session }
      get :new
      assigns(:user_session).should be(mock_user_session)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_session as @user_session" do
      UserSession.stub(:find).with("37") { mock_user_session }
      get :edit, :id => "37"
      assigns(:user_session).should be(mock_user_session)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created user_session as @user_session" do
        UserSession.stub(:new).with({'these' => 'params'}) { mock_user_session(:save => true) }
        post :create, :user_session => {'these' => 'params'}
        assigns(:user_session).should be(mock_user_session)
      end

      it "redirects to the created user_session" do
        UserSession.stub(:new) { mock_user_session(:save => true) }
        post :create, :user_session => {}
        response.should redirect_to(user_session_url(mock_user_session))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_session as @user_session" do
        UserSession.stub(:new).with({'these' => 'params'}) { mock_user_session(:save => false) }
        post :create, :user_session => {'these' => 'params'}
        assigns(:user_session).should be(mock_user_session)
      end

      it "re-renders the 'new' template" do
        UserSession.stub(:new) { mock_user_session(:save => false) }
        post :create, :user_session => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested user_session" do
        UserSession.should_receive(:find).with("37") { mock_user_session }
        mock_user_session.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :user_session => {'these' => 'params'}
      end

      it "assigns the requested user_session as @user_session" do
        UserSession.stub(:find) { mock_user_session(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:user_session).should be(mock_user_session)
      end

      it "redirects to the user_session" do
        UserSession.stub(:find) { mock_user_session(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(user_session_url(mock_user_session))
      end
    end

    describe "with invalid params" do
      it "assigns the user_session as @user_session" do
        UserSession.stub(:find) { mock_user_session(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:user_session).should be(mock_user_session)
      end

      it "re-renders the 'edit' template" do
        UserSession.stub(:find) { mock_user_session(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested user_session" do
      UserSession.should_receive(:find).with("37") { mock_user_session }
      mock_user_session.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the user_sessions list" do
      UserSession.stub(:find) { mock_user_session }
      delete :destroy, :id => "1"
      response.should redirect_to(user_sessions_url)
    end
  end

end
