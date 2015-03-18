require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :body => "MyString",
      :user => nil,
      :item => nil
    ))
  end

  it "renders new comment form" do
    render

  end
end
