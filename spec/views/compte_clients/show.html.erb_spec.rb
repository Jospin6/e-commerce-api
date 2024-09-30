require 'rails_helper'

RSpec.describe "compte_clients/show", type: :view do
  before(:each) do
    assign(:compte_client, CompteClient.create!(
      client: nil,
      type_compte: "Type Compte",
      numero_compte: "Numero Compte",
      code_compte: 2,
      solde: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Type Compte/)
    expect(rendered).to match(/Numero Compte/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
