class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable
  
   has_many :trees
 
   def setAdmin(value)
     self.update(admin: value)
     puts self.admin
     puts value
   end
end
