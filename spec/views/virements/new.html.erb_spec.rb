require 'rails_helper'

RSpec.describe "virements/new", type: :view do
  before(:each) do
    assign(:virement, Virement.new(
      montant: "9.99",
      emeteur: nil,
      receveur: nil
    ))
  end

  it "renders new virement form" do
    render

    assert_select "form[action=?][method=?]", virements_path, "post" do

      assert_select "input[name=?]", "virement[montant]"

      assert_select "input[name=?]", "virement[emeteur_id]"

      assert_select "input[name=?]", "virement[receveur_id]"
    end
  end
end
