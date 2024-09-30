json.extract! remboursement, :id, :credit_id, :montant_recu, :date_jour, :created_at, :updated_at
json.url remboursement_url(remboursement, format: :json)
