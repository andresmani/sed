class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nombre
      t.text :descripcion
      t.references :unidad

      t.timestamps
    end
    add_index :temas, :unidad_id
  end
end
