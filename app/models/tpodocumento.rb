class Tpodocumento < ActiveRecord::Base

  attr_accessible :nombre

  validates :nombre, :presence=>true,
	:length => { :minimum =>3, :maximum => 80 }

end
