require 'rails_helper'

RSpec.describe "comments/index", :type => :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :body => "Body",
        :user => nil,
        :item => nil
      ),
      Comment.create!(
        :body => "Body",
        :user => nil,
        :item => nil
      )
    ])
  end

end
