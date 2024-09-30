json.extract! credit, :id, :client_id, :montant, :taux_interet, :date_debut, :date_fin, :reste_non_paye, :created_at, :updated_at
json.url credit_url(credit, format: :json)
