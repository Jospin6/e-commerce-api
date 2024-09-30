class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :type_transaction, :montant, :date_transaction
  has_one :compte_client
end
