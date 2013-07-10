class AddArchivoToEvaluacion < ActiveRecord::Migration
  def self.up
  	add_attachment :evaluaciones, :archivo
  end

   def self.down
  	add_attachment :evaluaciones, :archivo
  end

end
