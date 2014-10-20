class Group < ActiveRecord::Base
	belongs_to :bank

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing_recruiter.jpg"
end