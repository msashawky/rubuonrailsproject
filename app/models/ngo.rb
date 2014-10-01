class Ngo < ActiveRecord::Base
	composed_of :address, :mapping => [ %w(address_country country),
										%w(address_governorate governorate),
										%w(address_city city),
										%w(address_street street),
										%w(address_apartment apartment) ]
	has_many :projects
	belongs_to :registered_user
end
