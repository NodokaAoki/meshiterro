class PostImage < ApplicationRecord
	belongs_to :user #Userモデルとの関連付け
	attachment :image #画像アップ用メソッド
end
