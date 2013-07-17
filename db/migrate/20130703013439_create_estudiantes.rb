class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento
      t.string :email
      t.string :tel
      t.string :cel
      t.date :fechana
      t.references :grupo
      t.references :tpodocumento
      t.references :programa

      t.timestamps
    end
    add_index :estudiantes, :grupo_id
    add_index :estudiantes, :tpodocumento_id
    add_index :estudiantes, :programa_id
  end
end
