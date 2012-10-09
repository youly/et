class Teacher < ActiveRecord::Base
  attr_accessible :college, :name

  has_many :comments,dependent: :destroy
  validates :name, presence:true

  	def getCollege
		College.find_by_id(self.college).name
	end
end
