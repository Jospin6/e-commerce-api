require 'rails_helper'

RSpec.describe "credits/index", type: :view do
  before(:each) do
    assign(:credits, [
      Credit.create!(
        client: nil,
        montant: "9.99",
        taux_interet: "9.99",
        reste_non_paye: "9.99"
      ),
      Credit.create!(
        client: nil,
        montant: "9.99",
        taux_interet: "9.99",
        reste_non_paye: "9.99"
      )
    ])
  end

  it "renders a list of credits" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
