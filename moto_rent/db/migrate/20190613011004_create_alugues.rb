has_one :moto
has_one :cliente
belongs_to :sinistro

class CreateAlugues < ActiveRecord::Migration[5.2]
  def change
    create_table :alugues do |t|
      #t.decimal :preco
      t.decimal :preco, :decimal #, :precision =&gt; 8, :scale =&gt; 2
      t.boolean :status
      t.datetime :data_retirada
      t.datetime :data_devolucao
      t.integer :moto_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
