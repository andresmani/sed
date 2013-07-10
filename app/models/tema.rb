class Tema < ActiveRecord::Base
	belongs_to :unidad
	has_many :actividades
  attr_accessible :nombre, :descripcion, :unidad_id

	def self.search(search)
		where('nombre like ? ',"%#{search}%")
	end
  
end
