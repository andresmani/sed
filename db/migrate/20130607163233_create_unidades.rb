class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nombre
      t.references :programa

      t.timestamps
    end
    add_index :unidades, :programa_id
  end
end
