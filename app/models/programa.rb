class Programa < ActiveRecord::Base
	has_many :unidades
  attr_accessible :ficha, :nombre
end
