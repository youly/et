class Comment < ActiveRecord::Base
  attr_accessible :content, :o, :s, :teacher_id, :user_id
end
