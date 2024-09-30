require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        nom: "Nom",
        prenom: "Prenom",
        telephone: "Telephone",
        adress: "Adress",
        email: "Email"
      ),
      Client.create!(
        nom: "Nom",
        prenom: "Prenom",
        telephone: "Telephone",
        adress: "Adress",
        email: "Email"
      )
    ])
  end

  it "renders a list of clients" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Nom".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Prenom".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Telephone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Adress".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
