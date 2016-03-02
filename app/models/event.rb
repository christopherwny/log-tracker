class Event < ActiveRecord::Base
	
	belongs_to :company
	belongs_to :employee

	validates_presence_of :company_id, :employee_id

	def self.eventSourceSelection 
	 ["Accident", "Equipment Failure", "Fire Inspection", "Injury", "Personal Observation", "Vessel Audit", 
	  "HazMat"]
	end

	def self.statusSelection 
	 ["Open", "Closed"]
	end
end
