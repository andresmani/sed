class Unidad < ActiveRecord::Base
	belongs_to :programa
	has_many :temas
  attr_accessible :nombre, :programa_id
end
