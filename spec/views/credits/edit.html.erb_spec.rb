require 'rails_helper'

RSpec.describe "credits/edit", type: :view do
  let(:credit) {
    Credit.create!(
      client: nil,
      montant: "9.99",
      taux_interet: "9.99",
      reste_non_paye: "9.99"
    )
  }

  before(:each) do
    assign(:credit, credit)
  end

  it "renders the edit credit form" do
    render

    assert_select "form[action=?][method=?]", credit_path(credit), "post" do

      assert_select "input[name=?]", "credit[client_id]"

      assert_select "input[name=?]", "credit[montant]"

      assert_select "input[name=?]", "credit[taux_interet]"

      assert_select "input[name=?]", "credit[reste_non_paye]"
    end
  end
end
