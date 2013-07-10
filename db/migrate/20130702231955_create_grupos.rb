class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :ficha
      t.references :programa

      t.timestamps
    end
    add_index :grupos, :programa_id
  end
end
