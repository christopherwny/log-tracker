class Employee < ActiveRecord::Base

	belongs_to :company
	has_many :events

	def to_s
		"#{fName} #{lName}"
	end
end
