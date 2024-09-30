class ClientSerializer < ActiveModel::Serializer
  attributes :id, :nom, :prenom, :telephone, :adress, :email
end
