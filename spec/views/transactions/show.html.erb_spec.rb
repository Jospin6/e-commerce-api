require 'rails_helper'

RSpec.describe "transactions/show", type: :view do
  before(:each) do
    assign(:transaction, Transaction.create!(
      type_transaction: "Type Transaction",
      montant: "9.99",
      compte_client: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type Transaction/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
