require 'rails_helper'

RSpec.describe "virements/index", type: :view do
  before(:each) do
    assign(:virements, [
      Virement.create!(
        montant: "9.99",
        emeteur: nil,
        receveur: nil
      ),
      Virement.create!(
        montant: "9.99",
        emeteur: nil,
        receveur: nil
      )
    ])
  end

  it "renders a list of virements" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
