class Grupo < ActiveRecord::Base
  belongs_to :programa
  has_many :estudiantes
  attr_accessible :ficha, :programa_id

  def self.search(search)
		where('ficha like ? ',"%#{search}%")
  end

end
