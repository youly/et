class Teacher < ActiveRecord::Base
  attr_accessible :college, :name

  validates :name, presence:true
end
