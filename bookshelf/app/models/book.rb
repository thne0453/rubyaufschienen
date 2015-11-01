class Book < ActiveRecord::Base
	has_many :authors, :order => :last_name, :dependent => :destroy
end
