require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :list => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_list_id[name=?]", "item[list_id]"
    end
  end
end
