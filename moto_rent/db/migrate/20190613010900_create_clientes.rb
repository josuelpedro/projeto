belongs_to :alugue

class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.integer :cpf
      t.string :telefone
      t.string :observacao

      t.timestamps
    end
  end
end
