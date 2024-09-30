class VirementSerializer < ActiveModel::Serializer
  attributes :id, :montant, :date_jour
  has_one :emeteur
  has_one :receveur
end
