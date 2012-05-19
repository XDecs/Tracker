class User < ActiveRecord::Base
	has_many:proyect
	belongs_to:country
	belongs_to:language
	has_many:task
end
