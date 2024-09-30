require 'rails_helper'

RSpec.describe "remboursements/show", type: :view do
  before(:each) do
    assign(:remboursement, Remboursement.create!(
      credit: nil,
      montant_recu: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
