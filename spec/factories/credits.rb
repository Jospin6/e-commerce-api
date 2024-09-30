FactoryBot.define do
  factory :credit do
    client { nil }
    montant { "9.99" }
    taux_interet { "9.99" }
    date_debut { "2024-09-30" }
    date_fin { "2024-09-30" }
    reste_non_paye { "9.99" }
  end
end
