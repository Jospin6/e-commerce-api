json.extract! virement, :id, :montant, :date_jour, :emeteur_id, :receveur_id, :created_at, :updated_at
json.url virement_url(virement, format: :json)
