class Post < ActiveRecord::Base

	acts_as_commontable
	acts_as_votable
	belongs_to :user

  paginates_per 10
end
