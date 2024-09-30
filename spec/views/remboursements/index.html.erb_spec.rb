require 'rails_helper'

RSpec.describe "remboursements/index", type: :view do
  before(:each) do
    assign(:remboursements, [
      Remboursement.create!(
        credit: nil,
        montant_recu: "9.99"
      ),
      Remboursement.create!(
        credit: nil,
        montant_recu: "9.99"
      )
    ])
  end

  it "renders a list of remboursements" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
