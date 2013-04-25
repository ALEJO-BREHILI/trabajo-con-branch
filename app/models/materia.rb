class Materia < ActiveRecord::Base
  attr_accessible :curso_id, :nombre

 def self.search(search) 
 	where('nombre like ?', "%#{search}%") 
 end

end
