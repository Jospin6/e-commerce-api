require 'rails_helper'

RSpec.describe "compte_clients/new", type: :view do
  before(:each) do
    assign(:compte_client, CompteClient.new(
      client: nil,
      type_compte: "MyString",
      numero_compte: "MyString",
      code_compte: 1,
      solde: "9.99"
    ))
  end

  it "renders new compte_client form" do
    render

    assert_select "form[action=?][method=?]", compte_clients_path, "post" do

      assert_select "input[name=?]", "compte_client[client_id]"

      assert_select "input[name=?]", "compte_client[type_compte]"

      assert_select "input[name=?]", "compte_client[numero_compte]"

      assert_select "input[name=?]", "compte_client[code_compte]"

      assert_select "input[name=?]", "compte_client[solde]"
    end
  end
end
