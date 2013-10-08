require 'spec_helper'

describe "Discussion" do

  subject { page }

  describe "displays the discussion title and body" do
    let(:discussion) {FactoryGirl.create(:discussion)}
    before {visit discussion_path(discussion)}

    it {should have_content(discussion.title)}
    it {should have_content(discussion.body)}
  end

end