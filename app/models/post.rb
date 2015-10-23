class Post < ActiveRecord::Base
	belongs_to :comments
	has_many :comments, dependent: :destroy

	#has_many :post_styles
	#has_many :styles, through:  :post_styles

	validates :title, presence: true
	validates :content, presence: true
end
