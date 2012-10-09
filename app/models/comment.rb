class Comment < ActiveRecord::Base
  attr_accessible :content, :teacher_id, :o, :s

  belongs_to :teacher
  belongs_to :user 

  validates :content, presence:true
  validates :teacher_id, presence:true
  validates :user_id, presence:true

  default_scope order:'Comments.created_at DESC'

  def getUser
  	User.find(self.user_id)
  end

   def getTeacher
  	Teacher.find(self.teacher_id)
  end
end
