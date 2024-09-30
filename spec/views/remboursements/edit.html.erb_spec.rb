require 'rails_helper'

RSpec.describe "remboursements/edit", type: :view do
  let(:remboursement) {
    Remboursement.create!(
      credit: nil,
      montant_recu: "9.99"
    )
  }

  before(:each) do
    assign(:remboursement, remboursement)
  end

  it "renders the edit remboursement form" do
    render

    assert_select "form[action=?][method=?]", remboursement_path(remboursement), "post" do

      assert_select "input[name=?]", "remboursement[credit_id]"

      assert_select "input[name=?]", "remboursement[montant_recu]"
    end
  end
end
