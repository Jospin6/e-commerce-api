FactoryBot.define do
  factory :compte_client do
    client { nil }
    type_compte { "MyString" }
    numero_compte { "MyString" }
    code_compte { 1 }
    solde { "9.99" }
  end
end
