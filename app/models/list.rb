class List < ApplicationRecord
	belongs_to :user, :optional => true

	max_paginates_per 5
	paginates_per 5
	mount_uploader :avatar, AvatarUploader

	scope :title, -> (input_title) {where("title ILIKE ?", "%#{input_title}%")}

	# def name
	# 	[title]
	# end

end
