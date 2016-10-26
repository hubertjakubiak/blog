class Post < ActiveRecord::Base

  enum status: { active: 0, archived: 1 }
  
	acts_as_commontable
	acts_as_votable
	belongs_to :user

  paginates_per 10
end
