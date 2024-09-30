class CreditSerializer < ActiveModel::Serializer
  attributes :id, :montant, :taux_interet, :date_debut, :date_fin, :reste_non_paye
  has_one :client
end
