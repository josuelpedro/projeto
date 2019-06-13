has_one :alugue

class CreateSinistros < ActiveRecord::Migration[5.2]
  def change
    create_table :sinistros do |t|
      #t.decimal :preco
      t.decimal :preco, :decimal #, :precision =&gt; 8, :scale =&gt; 2
      t.boolean :status
      t.integer :tipo
      t.text :descrição
      t.integer :alugue_id

      t.timestamps
    end
  end
end
