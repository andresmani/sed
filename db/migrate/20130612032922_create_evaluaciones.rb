class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.text :datevalu
      t.float :calificacion

      t.timestamps
    end
  end
end
