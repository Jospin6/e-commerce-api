FactoryBot.define do
  factory :virement do
    montant { "9.99" }
    date_jour { "2024-09-30" }
    emeteur { nil }
    receveur { nil }
  end
end
