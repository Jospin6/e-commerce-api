require 'rails_helper'

RSpec.describe "compte_clients/index", type: :view do
  before(:each) do
    assign(:compte_clients, [
      CompteClient.create!(
        client: nil,
        type_compte: "Type Compte",
        numero_compte: "Numero Compte",
        code_compte: 2,
        solde: "9.99"
      ),
      CompteClient.create!(
        client: nil,
        type_compte: "Type Compte",
        numero_compte: "Numero Compte",
        code_compte: 2,
        solde: "9.99"
      )
    ])
  end

  it "renders a list of compte_clients" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Type Compte".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Numero Compte".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
