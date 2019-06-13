json.extract! cliente, :id, :nome, :endereco, :cpf, :telefone, :observacao, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
