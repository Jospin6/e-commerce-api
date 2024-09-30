require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    assign(:client, Client.create!(
      nom: "Nom",
      prenom: "Prenom",
      telephone: "Telephone",
      adress: "Adress",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Prenom/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Adress/)
    expect(rendered).to match(/Email/)
  end
end
