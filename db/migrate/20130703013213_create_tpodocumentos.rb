class CreateTpodocumentos < ActiveRecord::Migration
  def change
    create_table :tpodocumentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
