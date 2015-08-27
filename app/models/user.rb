class User < ActiveRecord::Base
   has_many :microposts, dependent: :destroy
   devise :database_authenticatable,:registerable,
          :recoverable, :rememberable, :trackable, :validatable
   
   def feed
    Micropost.where("user_id = ?", id)
   end
  
   validates :name,  presence: true, length: { maximum: 50 }
end

