FactoryBot.define do
  factory :remboursement do
    credit { nil }
    montant_recu { "9.99" }
    date_jour { "2024-09-30" }
  end
end
