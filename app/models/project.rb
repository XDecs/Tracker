class Project < ActiveRecord::Base
	belongs_to:user
	belongs_to:project_status
	has_many:task
	
end
