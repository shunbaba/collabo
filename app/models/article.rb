class Article < ApplicationRecord
	validates :title, length: { maximum: 20 }
	validates :weather, length: { maximum: 10 }
	validates :body, length: { maximum: 200 }
	attachment :image

	after_create :set_default_img


	def set_default_img
		image_id = "/assets/no_img.png" if !image_id.present?
	end
end
