class Pin < ActiveRecord::Base
	belongs_to :trip
  belongs_to :user
	geocoded_by :address
	after_validation :geocode 

	has_attached_file :image, :styles =>
  { :large => "600x600>", :medium => "300x300>", :thumb => "50x50>" },
  default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :image,
  content_type: /\Aimage\/.*\Z/
  

end
