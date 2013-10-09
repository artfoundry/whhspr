require 'spec_helper'

describe CommentsController do
  describe "POST create" do
    let(:new_comment) {FactoryGirl.build(:comment)}

    it "should create a new a comment" do
      post :create, :comment => {body: new_comment.body, discussion_id: new_comment.discussion_id }
      expect(assigns(:comment).body).to eq(new_comment.body)
     end

    it "should be associated with a discussion" do
      post :create, :comment => {body: new_comment.body, discussion_id: new_comment.discussion_id}
      expect(assigns(:comment).discussion).to be_a(Discussion)
    end

    it "should redirect back to associated disucssion page" do
      post :create, :comment => {body: new_comment.body, discussion_id: new_comment.discussion_id}
      response.should redirect_to discussion_path(new_comment.discussion)
    end

  end
end
