FactoryBot.define do
  factory :transaction do
    type_transaction { "MyString" }
    montant { "9.99" }
    compte_client { nil }
    date_transaction { "2024-09-30" }
  end
end
