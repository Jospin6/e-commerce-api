require 'rails_helper'

RSpec.describe "credits/new", type: :view do
  before(:each) do
    assign(:credit, Credit.new(
      client: nil,
      montant: "9.99",
      taux_interet: "9.99",
      reste_non_paye: "9.99"
    ))
  end

  it "renders new credit form" do
    render

    assert_select "form[action=?][method=?]", credits_path, "post" do

      assert_select "input[name=?]", "credit[client_id]"

      assert_select "input[name=?]", "credit[montant]"

      assert_select "input[name=?]", "credit[taux_interet]"

      assert_select "input[name=?]", "credit[reste_non_paye]"
    end
  end
end
