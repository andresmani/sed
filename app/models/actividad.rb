class Actividad < ActiveRecord::Base
  belongs_to :tema
  attr_accessible :descripcion, :nombre, :tema_id

  	def self.search(search)
		where('nombre like ? ',"%#{search}%")
	end

end

