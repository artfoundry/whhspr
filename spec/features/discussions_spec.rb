require 'spec_helper'

describe "discussion request" do

  subject { page }

  describe "displays the discussion title and body" do
    let(:discussion) {FactoryGirl.create(:discussion)}
    before {visit discussion_path(discussion)}

    it {should have_content(discussion.title)}
    it {should have_content(discussion.body)}
  end

  describe "displays comments" do
    let(:discussion) {FactoryGirl.create(:discussion_with_comments)}
    before {visit discussion_path(discussion)}

    it {should have_content(discussion.comments[4].body)}
  end

end

describe "discussions request" do

  subject { page }

  describe "display discussion titles" do
    let(:discussions) {FactoryGirl.create_list(:discussion, 5)}
    before {visit discussions_path(discussions[4])}

    it {should have_content(discussions[4].title)}
  end

end

feature "discussions" do

  let(:discussion) { FactoryGirl.create(:discussion) }

  scenario "User creates a new discussion" do
    visit discussions_path
    fill_in "Title", :with => discussion.title
    fill_in "Body", :with => discussion.body

    click_button "Create Discussion"

    expect(page).to have_text(discussion.title)
  end
end
