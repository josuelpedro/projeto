class CreateParceiros < ActiveRecord::Migration[5.2]
  def change
    create_table :parceiros do |t|
      t.string :nome

      t.timestamps
    end
  end
end
