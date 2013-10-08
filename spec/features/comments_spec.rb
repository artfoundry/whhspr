require 'spec_helper'

describe "Comments" do
  describe "new comment form" do
    let(:discussion) {FactoryGirl.create(:discussion)}
    before do
      visit discussion_path(discussion)
      fill_in "Body", with: "sample text"
    end

    it "should create a new comment" do
      expect { click_button "submit" }.to change(Comment,:count).by(1)
    end
  end
end