require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :subject => "Subject",
        :body => "MyText"
      ),
      Message.create!(
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :subject => "Subject",
        :body => "MyText"
      )
    ])
  end

=begin
  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
=end
end
