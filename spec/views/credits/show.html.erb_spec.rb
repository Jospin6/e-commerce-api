require 'rails_helper'

RSpec.describe "credits/show", type: :view do
  before(:each) do
    assign(:credit, Credit.create!(
      client: nil,
      montant: "9.99",
      taux_interet: "9.99",
      reste_non_paye: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
