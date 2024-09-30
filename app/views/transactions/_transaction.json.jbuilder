json.extract! transaction, :id, :type_transaction, :montant, :compte_client_id, :date_transaction, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
