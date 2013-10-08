require 'spec_helper'

describe "discussion" do

  subject { page }

  describe "displays the discussion title and body" do
    let(:discussion) {FactoryGirl.create(:discussion)}
    before {visit discussion_path(discussion)}

    it {should have_content(discussion.title)}
    it {should have_content(discussion.body)}
  end

  describe "displays comments" do
    let(:comment) {FactoryGirl.create(:comment)}
    before {visit discussion_path(comment)}

    it {should have_content(comment.body)}
  end

end