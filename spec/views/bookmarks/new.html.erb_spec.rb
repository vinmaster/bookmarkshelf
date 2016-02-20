require 'rails_helper'

RSpec.describe "bookmarks/new", type: :view do
  before(:each) do
    assign(:bookmark, Bookmark.new(
      :url => "MyText",
      :title => "MyString",
      :description => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmarks_path, "post" do

      assert_select "textarea#bookmark_url[name=?]", "bookmark[url]"

      assert_select "input#bookmark_title[name=?]", "bookmark[title]"

      assert_select "input#bookmark_description[name=?]", "bookmark[description]"

      assert_select "textarea#bookmark_body[name=?]", "bookmark[body]"
    end
  end
end
