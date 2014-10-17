class Manager < ActiveRecord::Base
	acts_as :accountant
	acts_as :site_admin
end
