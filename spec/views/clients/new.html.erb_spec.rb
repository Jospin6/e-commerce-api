require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      nom: "MyString",
      prenom: "MyString",
      telephone: "MyString",
      adress: "MyString",
      email: "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input[name=?]", "client[nom]"

      assert_select "input[name=?]", "client[prenom]"

      assert_select "input[name=?]", "client[telephone]"

      assert_select "input[name=?]", "client[adress]"

      assert_select "input[name=?]", "client[email]"
    end
  end
end
