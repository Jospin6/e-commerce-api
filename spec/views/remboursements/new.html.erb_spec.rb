require 'rails_helper'

RSpec.describe "remboursements/new", type: :view do
  before(:each) do
    assign(:remboursement, Remboursement.new(
      credit: nil,
      montant_recu: "9.99"
    ))
  end

  it "renders new remboursement form" do
    render

    assert_select "form[action=?][method=?]", remboursements_path, "post" do

      assert_select "input[name=?]", "remboursement[credit_id]"

      assert_select "input[name=?]", "remboursement[montant_recu]"
    end
  end
end
