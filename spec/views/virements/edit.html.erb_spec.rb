require 'rails_helper'

RSpec.describe "virements/edit", type: :view do
  let(:virement) {
    Virement.create!(
      montant: "9.99",
      emeteur: nil,
      receveur: nil
    )
  }

  before(:each) do
    assign(:virement, virement)
  end

  it "renders the edit virement form" do
    render

    assert_select "form[action=?][method=?]", virement_path(virement), "post" do

      assert_select "input[name=?]", "virement[montant]"

      assert_select "input[name=?]", "virement[emeteur_id]"

      assert_select "input[name=?]", "virement[receveur_id]"
    end
  end
end
