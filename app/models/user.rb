class User < ActiveRecord::Base
  authenticates_with_sorcery!
	 attr_accessible :username, :password, :password_confirmation, :email
	 
	 validates_confirmation_of :password
	 validates_presence_of :password, :on => :create
	 validates_presence_of :email
	 validates_uniqueness_of :email
	 validates_presence_of :username
	 validates_uniqueness_of :username


end
