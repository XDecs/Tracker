class Task < ActiveRecord::Base
	belongs_to:proyect
	belongs_to:user
	belongs_to:task_type
	
end
