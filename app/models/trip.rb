class Trip < ActiveRecord::Base
	has_many :pins, dependent: :destroy
  belongs_to :user

  validates_presence_of :title

end
