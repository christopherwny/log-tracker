class Event < ActiveRecord::Base
	
	belongs_to :company
	belongs_to :employee

	validates_presence_of :company_id, :employee_id, :issuer, :rac

	def self.eventSourceSelection 
	 ["Accident","Audit Int.", "Audit Ext", "Equipment Failure", "FLDEQ", "Fire Inspection", "Injury", 
	 	"Off Duty Accident", "OSHA", "Personal Observation", "Vessel Audit", 
	  "HazMat"]
	end

	def self.statusSelection 
	 ["Open", "Closed"]
	end

	def self.racSelection 
	 ["Extra High", "High", "Medium", "Low"]
	end
end
