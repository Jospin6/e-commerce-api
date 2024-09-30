class CompteClientSerializer < ActiveModel::Serializer
  attributes :id, :type_compte, :numero_compte, :code_compte, :solde
  has_one :client
end
