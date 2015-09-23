class Order < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	PAYMENT_TYPES = [ "Check", "Credit Card" ]
	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES
end
