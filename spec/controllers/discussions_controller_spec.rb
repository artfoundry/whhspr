require 'spec_helper'

describe DiscussionsController do
  describe "GET index" do
    it "@discussions should have all discussions" do
      5.times {FactoryGirl.create(:discussion)}
      get :index
      expect(assigns(:discussions).count).to eq(5)
      expect(assigns(:discussions)[0]).to be_a(Discussion)
    end
  end

  describe "GET show" do
    let(:discussion) {FactoryGirl.create(:discussion)}

    it "finds @discussion" do
      get :show, :id => discussion.id
      expect(assigns(:discussion)).to eq(discussion)
    end
  end

end