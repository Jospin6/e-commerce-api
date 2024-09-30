require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  let(:client) {
    Client.create!(
      nom: "MyString",
      prenom: "MyString",
      telephone: "MyString",
      adress: "MyString",
      email: "MyString"
    )
  }

  before(:each) do
    assign(:client, client)
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(client), "post" do

      assert_select "input[name=?]", "client[nom]"

      assert_select "input[name=?]", "client[prenom]"

      assert_select "input[name=?]", "client[telephone]"

      assert_select "input[name=?]", "client[adress]"

      assert_select "input[name=?]", "client[email]"
    end
  end
end
