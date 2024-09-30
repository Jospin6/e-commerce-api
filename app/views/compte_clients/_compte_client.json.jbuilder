json.extract! compte_client, :id, :client_id, :type_compte, :numero_compte, :code_compte, :solde, :created_at, :updated_at
json.url compte_client_url(compte_client, format: :json)
