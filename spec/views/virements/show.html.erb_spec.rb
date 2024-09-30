require 'rails_helper'

RSpec.describe "virements/show", type: :view do
  before(:each) do
    assign(:virement, Virement.create!(
      montant: "9.99",
      emeteur: nil,
      receveur: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
