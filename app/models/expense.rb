class Expense < ActiveRecord::Base
	validates :group, presence: true
	validates :cost, presence: true
	validates :amount, presence: true
	validates :date, presence: true
end
