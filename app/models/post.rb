class Post < ApplicationRecord

	belongs_to :user

	extend FriendlyId
  	friendly_id :title, use: :slugged

  	def shold_generate_new_friendly_id?
  		title_changed?
  	end
	
	def day_published
  		"Published #{created_at.strftime('%-b %-d, %Y')}"
  	end 

  	scope :most_recent, -> {order(id: :desc)}

  	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/


end
