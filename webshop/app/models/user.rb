class User < ActiveRecord::Base
  
  validates :login_name,
            :presence => true,
            :format => { 
                         :with => /[ab]+/,
                         :message => "must include at least one of the special characters -_."
                       }
             
  validates :last_name, 
            :presence => true

end