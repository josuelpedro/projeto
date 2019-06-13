belongs_to :alugue

class CreateMotos < ActiveRecord::Migration[5.2]
  def change
    create_table :motos do |t|
      t.string :marca
      t.string :tipo
      t.string :modelo
      t.boolean :disponivel

      t.timestamps
    end
  end
end
