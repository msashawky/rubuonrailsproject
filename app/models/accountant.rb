class Accountant < ActiveRecord::Base
	actable
	acts_as :user_datum
end
