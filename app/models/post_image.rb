class PostImage < ApplicationRecord
	belongs_to :user #Userモデルとの関連付け
	attachment :image #画像アップ用メソッド
	has_many :post_comments, dependent: :destroy #PostCommentモデルとの関連付け
	has_many :favorites, dependent: :destroy
	validates :shop_name, presence: true
	validates :image, presence: true
	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
