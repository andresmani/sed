class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.string :nombre
      t.text :descripcion
      t.references :tema

      t.timestamps
    end
    add_index :actividades, :tema_id
  end
end
