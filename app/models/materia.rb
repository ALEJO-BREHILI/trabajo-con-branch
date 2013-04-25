class Materia < ActiveRecord::Base
  attr_accessible :curso_id, :nombre
<<<<<<< HEAD
=======

 def self.search(search) 
 	where('nombre like ?', "%#{search}%") 
 end

>>>>>>> 29e994b1da6d0dce9998e3178d0b75f9dd6f511f
end
