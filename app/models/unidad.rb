class Unidad < ActiveRecord::Base
	belongs_to :programa
	has_many :temas
 	attr_accessible :nombre, :programa_id

  	def self.search(search)
		where('nombre like ?',"%#{search}%")
	end

end