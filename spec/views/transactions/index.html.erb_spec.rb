require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        type_transaction: "Type Transaction",
        montant: "9.99",
        compte_client: nil
      ),
      Transaction.create!(
        type_transaction: "Type Transaction",
        montant: "9.99",
        compte_client: nil
      )
    ])
  end

  it "renders a list of transactions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Type Transaction".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
