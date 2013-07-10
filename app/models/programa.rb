class Programa < ActiveRecord::Base
	has_many :unidades
	has_many :grupos
  attr_accessible :nombre


	def self.search(search)
		where('nombre like ?',"%#{search}%")
	end

end