class Estudiante < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :tpodocumento
  belongs_to :programa
  attr_accessible :apellido, :cel, :direccion, :documento, :email, :fechana, :nombre, :tel, :tpodocumento_id, :grupo_id, :programa_id

	validates :cel, 
	  :length => { :min => 0, :maximum => 11 },
	  :numericality => true

	def self.search(search)
		where('nombre like ? or documento like ? or email like ? ',"%#{search}%" ,"%#{search}%","%#{search}%")
	end

end
