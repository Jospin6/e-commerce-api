require 'rails_helper'

RSpec.describe "compte_clients/edit", type: :view do
  let(:compte_client) {
    CompteClient.create!(
      client: nil,
      type_compte: "MyString",
      numero_compte: "MyString",
      code_compte: 1,
      solde: "9.99"
    )
  }

  before(:each) do
    assign(:compte_client, compte_client)
  end

  it "renders the edit compte_client form" do
    render

    assert_select "form[action=?][method=?]", compte_client_path(compte_client), "post" do

      assert_select "input[name=?]", "compte_client[client_id]"

      assert_select "input[name=?]", "compte_client[type_compte]"

      assert_select "input[name=?]", "compte_client[numero_compte]"

      assert_select "input[name=?]", "compte_client[code_compte]"

      assert_select "input[name=?]", "compte_client[solde]"
    end
  end
end
