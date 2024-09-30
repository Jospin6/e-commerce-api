require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      type_transaction: "MyString",
      montant: "9.99",
      compte_client: nil
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "input[name=?]", "transaction[type_transaction]"

      assert_select "input[name=?]", "transaction[montant]"

      assert_select "input[name=?]", "transaction[compte_client_id]"
    end
  end
end
