class RemboursementSerializer < ActiveModel::Serializer
  attributes :id, :montant_recu, :date_jour
  has_one :credit
end
