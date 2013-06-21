class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :nombre
      t.string :ficha

      t.timestamps
    end
  end
end
