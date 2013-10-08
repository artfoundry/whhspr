require 'spec_helper'

describe DiscussionsController do
  describe "GET index" do
    it "assigns @discussions" do
      get :index
      expect(assigns(:discussions)).to eq(Discussion.all)
    end
  end
end