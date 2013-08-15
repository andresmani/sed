class Evaluacion < ActiveRecord::Base
  attr_accessible :calificacion, :datevalu, :archivo

	has_attached_file :archivo, :styles => {},
		:url  => "/assets/evaluaciones/:id/:style/:basename.:extension",
        :path => ":rails_root/public/assets/evaluaciones/:id/:style/:basename.:extension"

	validates_attachment_presence :archivo
	validates_attachment_size :archivo, :less_than => 5.megabytes
	validates_attachment_content_type :archivo, :content_type => ['text/plain', 'application/pdf']

end
