class Headhunter < ActiveRecord::Base
	has_many :recruiters

	scope :isMega, -> {where(:mega => true)}
	scope :Undergrad, -> {where(:CompanyUndergrad => true)}
	scope :PreMBA, -> {where(:CompanyPreMBA => true)}
	scope :PostMBA, -> {where(:CompanyPostMBA => true)}
	scope :Executive, -> {where(:CompanyExecutive => true)}
	scope :hasJobs, -> {where("CompanyJobs != 'None'")}

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
