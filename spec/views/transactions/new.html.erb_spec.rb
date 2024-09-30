require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      type_transaction: "MyString",
      montant: "9.99",
      compte_client: nil
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[type_transaction]"

      assert_select "input[name=?]", "transaction[montant]"

      assert_select "input[name=?]", "transaction[compte_client_id]"
    end
  end
end
