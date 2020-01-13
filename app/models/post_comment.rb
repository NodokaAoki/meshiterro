class PostComment < ApplicationRecord
	belongs_to :user #Userモデルとの関連付け
	belongs_to :post_image #PostImageモデルとの関連付け
end
