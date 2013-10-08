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

  describe "POST create" do
    let(:thread) {FactoryGirl.create(:discussion)}

    it "creates a new @discussion" do
      post :create, :discussion => {title: thread.title, body: thread.body}
      expect(assigns(:discussion).title).to eq(thread.title)
      expect(assigns(:discussion).body).to eq(thread.body)
    end
  end

end